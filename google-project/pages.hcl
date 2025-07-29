resource "page" "first" {
  title = "First"
  file = "instructions/first.md"

  activities = {
    "remote" = resource.task.remote
  }
}