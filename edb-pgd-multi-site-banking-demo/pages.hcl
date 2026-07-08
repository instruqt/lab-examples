resource "page" "poc" {
  title = "SSH Discovery"
  file  = "instructions/poc.md"

  activities = {
    "ssh_ready" = resource.task.ssh_ready
  }
}
