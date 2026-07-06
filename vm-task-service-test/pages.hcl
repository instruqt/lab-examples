resource "page" "first" {
  title = "VM Task + Service Test"
  file  = "instructions/page.md"

  variables = {
    greeting = resource.exec.provision.output.GREETING
  }

  activities = {
    "http_ready" = resource.task.http_ready
  }
}
