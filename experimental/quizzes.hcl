resource "quiz" "france" {
	questions = [
		resource.multiple_choice_question.cities_france,
		resource.text_answer_question.capital_france,
	]

	// attempts = 3
	show_hints = true
}

resource "text_answer_question" "capital_france" {
	question = "What is the capital of France?"
	answer ="Paris"
	hints = [
    "They host the olympics in 2024",
		"The city is known for the Eiffel Tower"
	]
}

resource "multiple_choice_question" "cities_france" {
	question = "Which of these cities are in France?"
	answer = ["Paris", "Lyon", "Nantes"]
	distractors = ["London", "Berlin"]
	
	hints = [
		"One of these cities is in the UK",
		"Another city is in Germany"
	]
}