resource "page" "first" {
  file = "instructions/page.md"

  activities = {
    "france" = resource.quiz.france
  }
}
