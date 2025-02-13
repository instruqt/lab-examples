resource "terminal" "shell" {
  title = "Terminal"

  target = resource.container.ubuntu
  
  shell = "/bin/bash"
  working_directory = "/root"
}

resource "terminal" "shell2" {
  title = "Vault terminal"

  target = resource.container.ubuntu
  shell = "/bin/sh"
  user = "root"
  group = "root"
  prompt = "%%{%f%b%k%}$(build_prompt)"
  theme = "dracula"
  working_directory = "/root"
  #command = ["watch", "-n", "1", "ls -lha"]
}

resource "service" "vault_ui" {
  title = "Vault UI"

  target = resource.container.ubuntu
  scheme = "http"
  port = 8200
  path = "/ui"
}

resource "editor" "code" {
  title = "Visual Studio Code"

  extensions = [
    "golang.go",
    "sdras.night-owl"
  ]

  theme = "Night Owl (No Italics)"
  settings = file("files/settings.json")
  
  workspace "assets" {
    directory = "files"
  }

  workspace "vault_config" {
    target = resource.container.ubuntu
    directory = "/etc/vault.d"
  }
}

resource "note" "addendum" {
  title = "Addendum"
  
  file = "notes/addendum.md"
  variables = {
    version = "0.12"
  }
}

resource "external_website" "iframe_same_window" {
  title = "Iframe website"

  url = "https://docs.instruqt.com"
}

resource "external_website" "iframe_new_window" {
  title = "Iframe website"

  url = "https://docs.instruqt.com"

  open_in_new_window = true
}

resource "virtual_browser" "virtual" {
  title = "Virtual browser website"

  url = "https://docs.instruqt.com"
  
  agent = "firefox"
}