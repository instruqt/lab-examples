resource "page" "first" {
  file = "instructions/introduction/first.md"
}

resource "page" "second" {
  file = "instructions/introduction/second.md"

  activities = {
    "exam" = resource.task.first_task
    "quiz" = resource.quiz.france
  }
}