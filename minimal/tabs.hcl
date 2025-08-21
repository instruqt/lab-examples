resource "terminal" "shell" {
  target = resource.container.ubuntu

  shell             = "/bin/bash"
  working_directory = "/root"
}

resource "terminal" "shell2" {
  target            = resource.container.ubuntu
  shell             = "/bin/sh"
  user              = "root"
  group             = "root"
  prompt            = "%%{%f%b%k%}$(build_prompt)"
  theme             = "dracula"
  working_directory = "/root"
  #command = ["watch", "-n", "1", "ls -lha"]
}

resource "service" "vault_ui" {
  target = resource.container.ubuntu
  scheme = "http"
  port   = 8200
  path   = "/ui"
}

resource "editor" "code" {
  extensions = [
    "golang.go",
    "sdras.night-owl"
  ]

  theme    = "Night Owl (No Italics)"
  settings = file("files/settings.json")

  workspace "assets" {
    directory = "files"
  }

  workspace "vault_config" {
    target    = resource.container.ubuntu
    directory = "/etc/vault.d"
  }
}

resource "note" "addendum" {
  file = "notes/addendum.md"
  variables = {
    "version" = "0.12"
  }
}

resource "external_website" "iframe_same_window" {
  url = "https://docs.instruqt.com"
}

resource "external_website" "iframe_new_window" {
  url = "https://docs.instruqt.com"

  open_in_new_window = true
}

resource "virtual_browser" "virtual" {
  url = "https://docs.instruqt.com"

  agent = "firefox"
}