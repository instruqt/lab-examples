resource "google_project" "my_project" {
  regions  = ["europe-west1"]
  services = ["compute.googleapis.com"]

  user "user" {
    roles = ["roles/compute.admin"]
  }

  service_account "user" {
    roles = ["roles/compute.admin"]
  }
}

resource "template" "google_cloud_key" {
  source      = resource.google_project.my_project.service_account.0.key
  destination = "${data("google")}/key.json"
}

resource "terraform" "provision_resources" {
  source = "files/terraform"

  volume {
    source      = resource.template.google_cloud_key.destination
    destination = "/tmp/key.json"
  }

  variables = {
    zone = "europe-west1-b"
  }

  environment = {
    GOOGLE_APPLICATION_CREDENTIALS = "/tmp/key.json"
    GOOGLE_PROJECT                 = resource.google_project.my_project.project_id
    GOOGLE_REGION                  = resource.google_project.my_project.regions.0
  }
}

resource "template" "google_cloud_config" {
  source      = <<-EOF
  [auth]
  credential_file_override = /home/cloudsdk/key.json

  [core]
  account = {{account}}
  project = {{project}}
  EOF
  destination = "${data("google")}/config"

  variables = {
    account = resource.google_project.my_project.service_account.0.email
    project = resource.google_project.my_project.project_id
  }
}

resource "container" "google_cloud_cli" {
  image {
    name = "gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine"
  }

  volume {
    source      = "resource.template.google_cloud_config.destination"
    destination = "/root/.config/gcloud/configurations/config_default"
  }

  volume {
    source      = "resource.template.google_cloud_key.destination"
    destination = "/home/cloudsdk/key.json"
  }
}

resource "exec" "generate_ssh_key" {
  target = resource.container.google_cloud_cli

  script = <<-EOF
  ssh-keygen -t "$${type}" -f "$${file}" -C "$${comment}" -N ""

  chmod 0600 /root/.ssh/*
  EOF

  environment = {
    "type"    = "ed25519"
    "file"    = "/root/.ssh/id_ed25519"
    "comment" = resource.google_project.my_project.service_account.0.email
  }
}