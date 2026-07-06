resource "service" "workshop_http" {
  target = resource.vm.workshop
  scheme = "http"
  port   = 8000
  path   = "/"
}

resource "terminal" "workshop" {
  target = resource.vm.workshop
  shell  = "/bin/bash"
}
