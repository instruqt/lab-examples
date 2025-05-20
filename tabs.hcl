
resource "terminal" "terminal" {
  target           = resource.container.workstation
  shell            = "/bin/sh"
  user             = "root"
  group            = "root"
  workingDirectory = "/tmp"
  list             = ["/bin/tail", "-f", "/dev/null"]
}
