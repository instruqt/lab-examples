resource "page" "first" {
  file = "instructions/page.md"

  activities = {
    "helloworld" = resource.task.helloworld
  }
}
