resource "terminal" "vm" {
  target = resource.container.google_cloud_cli

  command = [
    "gcloud", "compute", "ssh", 
    "${resource.google_project.my_project.service_account.0.name}@${resource.terraform.provision_resources.output.instance_name}", 
    "--zone=${resource.terraform.provision_resources.output.instance_zone}",
    "--force-key-file-overwrite",
    "--ssh-key-file=${resource.exec.generate_ssh_key.environment["file"]}"
  ]

  shell = "/bin/bash"
  working_directory = "/root"
}

resource "terminal" "cli" {
  target = resource.container.google_cloud_cli

  shell = "/bin/bash"
  working_directory = "/root"
}
