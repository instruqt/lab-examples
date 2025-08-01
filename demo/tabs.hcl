resource "terminal" "workstation" {
  target = resource.container.workstation
  
  shell = "/bin/bash"
  working_directory = "/root"
}

resource "editor" "workstation" {
  workspace "home" {
    target = resource.container.workstation
    directory = "/root"
  }
}