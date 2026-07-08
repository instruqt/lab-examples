resource "terminal" "workstation" {
  target = resource.container.workstation
  shell  = "/bin/bash"
}
