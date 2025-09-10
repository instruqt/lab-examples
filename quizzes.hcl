resource "quiz" "first-quiz" {
  questions = [resource.multiple_choice_question.mutline-question, resource.single_choice_question.input-question]
}

resource "single_choice_question" "input-question" {
  question    = "Insert color of food?"
  answer      = "yellow"
  distractors = ["green", "red", "blue"]
}

resource "multiple_choice_question" "mutline-question" {
  question    = "Choose food"
  answer      = ["cheese"]
  distractors = ["apple", "potato", "cake"]
}
