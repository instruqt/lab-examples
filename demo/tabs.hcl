resource "terminal" "ubuntu" {
  title = "Terminal"

  target = resource.container.ubuntu
  
  shell = "/bin/bash"
  working_directory = "/root"
}

resource "editor" "ubuntu" {
  title = "Editor"

  workspace "home" {
    target = resource.container.ubuntu
    directory = "/root"
  }
}

resource "editor" "lab" {
  title = "Editor"

  workspace "lab" {
    target = resource.container.ubuntu
    directory = "/opt"
  }

  # workspace "track" {
  #   target = resource.container.ubuntu
  #   directory = "/opt/track"
  # }
}
