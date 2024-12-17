resource "terminal" "workstation" {
  title = "Terminal"

  target = resource.container.workstation
  
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

# resource "service" "vscode" {
#   title = "Code"

#   target = resource.container.vscode
#   scheme = "http"
#   port = 8000
#   path = "/?folder=/home/coder/code"
# }
