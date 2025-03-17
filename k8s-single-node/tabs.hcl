resource "terminal" "shell" {
  title = "Terminal"

  target = resource.container.workstation

  shell             = "/bin/bash"
  working_directory = "/root"
}
