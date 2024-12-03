resource "chapter" "introduction" {
  title = "Introduction"

  page "first" {
    file = "instructions/introduction/first.md"
  }

  page "second" {
    file = "instructions/introduction/second.md"

     validation = {
      "exam" = resource.task.first_task
    }
  }
}