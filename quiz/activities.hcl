resource "quiz" "france" {
  questions = [
    resource.single_choice_question.capital,
    resource.text_answer_question.language,
    resource.numeric_answer_question.regions,
    resource.multiple_choice_question.food,
  ]
}

resource "single_choice_question" "capital" {
  question = "What is the capital of France?"
  answer = "Paris"
  distractors = ["London", "Berlin", "Madrid"]
  hints = [
    "The Eiffel Tower is located in this city.",
    "This city is known for its fashion and art."
  ]
}

resource "text_answer_question" "language" {
  question = "What is the official language of France?"
  answer = "french"
}

resource "numeric_answer_question" "regions" {
  question = "How many regions are there in France?"
  answer = 18
}

resource "multiple_choice_question" "food" {
  question = "Which of these dishes are french?"
  answer = ["Croissant", "Ratatouille"]
  distractors = ["Mushy Peas", "Hamburger", "Sushi"]
  hints = [
    "One of these dishes is a pastry.",
    "One of these dishes is a vegetable stew."
  ]
}