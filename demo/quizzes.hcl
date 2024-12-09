resource "quiz" "quizzes" {
	questions = [
		resource.single_choice_question.capital_france,
		resource.multiple_choice_question.cities_france,
	]
	show_hints = true
}

resource "single_choice_question" "capital_france" {
	question = "What is the capital of France?"
	answer = "Paris"
	distractors = ["Lyon", "Nantes", "London", "Berlin"]

	hints = [
		"The correct answer is Paris .",
		"No, really, it's Paris ..",
		"Just pick Paris already ..."
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
