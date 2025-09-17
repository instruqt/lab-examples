resource "terminal" "shell" {
  target = resource.container.ubuntu

  shell             = "/bin/bash"
  working_directory = "/root"
}
