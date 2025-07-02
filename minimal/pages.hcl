resource "page" "first" {
  file = "instructions/introduction/first.md"
}

resource "page" "second" {
  file = "instructions/introduction/second.md"

  activities = {
    "first_task" = resource.task.first_task
    "quiz" = resource.quiz.france
  }
}