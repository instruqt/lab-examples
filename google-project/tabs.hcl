resource "terminal" "vm" {
  target = resource.container.google_cloud_cli

  command = ["gcloud", "compute", "ssh", "", "", "--force-key-file-overwrite", ""]

  shell             = "/bin/bash"
  working_directory = "/root"
}

resource "terminal" "cli" {
  target = resource.container.google_cloud_cli

  shell             = "/bin/bash"
  working_directory = "/root"
}
