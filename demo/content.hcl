resource "page" "intro" {
  file = "instructions/introduction/intro.md"
}

resource "page" "learning_curve" {
  file = "instructions/introduction/learning_curve.md"
}

resource "page" "feedback" {
  file = "instructions/introduction/feedback.md"
}

resource "page" "dependencies" {
  file = "instructions/introduction/dependencies.md"
}

resource "page" "constraints" {
  file = "instructions/introduction/constraints.md"
}

resource "page" "collaboration" {
  file = "instructions/introduction/collaboration.md"
}

resource "page" "conclusion" {
  file = "instructions/introduction/conclusion.md"
}

resource "page" "goals" {
  file = "instructions/goals/goals.md"
}

resource "page" "lower_learning_curve" {
  file = "instructions/goals/lower_learning_curve.md"
}

resource "page" "fast_feedback" {
  file = "instructions/goals/fast_feedback.md"
}

resource "page" "explicitness" {
  file = "instructions/goals/explicitness.md"
}

resource "page" "flexibility" {
  file = "instructions/goals/flexibility.md"
}

resource "page" "better_collaboration" {
  file = "instructions/goals/better_collaboration.md"
}

resource "page" "reimagined" {
  file = "instructions/reimagined/reimagined.md"
}

resource "page" "components" {
  file = "instructions/reimagined/components.md"
}
resource "page" "layouts" {
  file = "instructions/reimagined/layouts.md"
}

resource "page" "new_flow" {
  file = "instructions/flow/new_flow.md"
}

resource "page" "activities" {
  file = "instructions/flow/activities.md"

  activities = {
    "exam" = resource.task.first_task
    "quizzes" = resource.quiz.quizzes
  }
}

resource "page" "feedback" {
  file = "instructions/behind_the_scenes/feedback.md"
}

resource "page" "creator_ui" {
  file = "instructions/behind_the_scenes/creator_ui.md"
}

resource "page" "modules" {
  file = "instructions/behind_the_scenes/modules.md"
}

resource "page" "versioning" {
  file = "instructions/behind_the_scenes/versioning.md"
}
