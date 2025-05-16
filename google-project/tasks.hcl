resource "task" "remote" {
  config {
    target = resource.container.google_cloud_cli

    parallel_exec {
      condition = true
    }
  }

  condition "file_exists" {
    description = "The file exists"

    config {
      target = resource.container.google_cloud_cli
    }

    check {
      script          = "scripts/file_exists.sh"
      failure_message = "The file could not be found at /tmp/hello inside the VM"

      config {
        environment = {
          user = resource.google_project.my_project.service_account.0.name
          host = resource.terraform.provision_resources.output.instance_ip
          key = resource.exec.generate_ssh_key.environment["file"]
        }
        failure_exit_codes = [1]
      }
    }
  }
}