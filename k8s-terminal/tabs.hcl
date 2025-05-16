// Create a terminal tab to the workstation container
resource "terminal" "shell" {
  target = resource.container.workstation

  shell             = "/bin/bash"
  working_directory = "/root"
}
