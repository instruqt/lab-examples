resource "page" "first" {
  title = "Quizzes"
  file = "instructions/page.md"

  activities = {
    "france" = resource.quiz.france
  }
}
