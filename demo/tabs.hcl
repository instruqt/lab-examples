resource "terminal" "workstation" {
  title = "Terminal"

  target = resource.container.workspace
  
  shell = "/bin/bash"
  working_directory = "/root"
}

resource "editor" "workstation" {
  title = "Editor"

  workspace "home" {
    target = resource.container.workstation
    directory = "/root"
  }
}
