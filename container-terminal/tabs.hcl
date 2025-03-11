resource "terminal" "shell" {
  title = "Terminal"

  target = resource.container.ubuntu

  shell             = "/bin/bash"
  working_directory = "/root"
}
