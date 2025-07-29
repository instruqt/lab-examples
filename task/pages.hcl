resource "page" "first" {
  title = "Tasks"
  file = "instructions/page.md"

  activities = {
    "helloworld" = resource.task.helloworld
  }
}
