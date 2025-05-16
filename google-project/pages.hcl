resource "page" "first" {
  file = "instructions/first.md"

  activities = {
    "remote" = resource.task.remote
  }
}