resource "terminal" "shell" {
  title = "Terminal"

  target = resource.container.ubuntu
  working_directory = "/root"
}