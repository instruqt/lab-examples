resource "page" "first" {
  title = "First"
  file  = "instructions/introduction/first.md"
}

resource "page" "second" {
  title = "Second"
  file  = "instructions/introduction/second.md"

  activities = {
    "first_task" = resource.task.first_task
    "quiz"       = resource.quiz.france
  }
}