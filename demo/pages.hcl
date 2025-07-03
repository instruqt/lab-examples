resource "page" "intro" {
  title = "Intro"
  file = "instructions/introduction/intro.md"
}

resource "page" "learning_curve" {
  title = "Learning Curve"
  file = "instructions/introduction/learning_curve.md"
}

resource "page" "poor_feedback" {
  title = "Poor Feedback"
  file = "instructions/introduction/feedback.md"
}

resource "page" "dependencies" {
  title = "Dependencies"
  file = "instructions/introduction/dependencies.md"
}

resource "page" "constraints" {
  title = "Constraints"
  file = "instructions/introduction/constraints.md"
}

resource "page" "difficult_collaboration" {
  title = "Difficult Collaboration"
  file = "instructions/introduction/collaboration.md"
}

resource "page" "conclusion" {
  title = "Conclusion"
  file = "instructions/introduction/conclusion.md"
}

resource "page" "goals" {
  title = "Goals"
  file = "instructions/goals/goals.md"
}

resource "page" "lower_learning_curve" {
  title = "Lower Learning Curve"
  file = "instructions/goals/lower_learning_curve.md"
}

resource "page" "fast_feedback" {
  title = "Fast Feedback"
  file = "instructions/goals/fast_feedback.md"
}

resource "page" "explicitness" {
  title = "Explicitness"
  file = "instructions/goals/explicitness.md"
}

resource "page" "flexibility" {
  title = "Flexibility"
  file = "instructions/goals/flexibility.md"
}

resource "page" "better_collaboration" {
  title = "Better Collaboration"
  file = "instructions/goals/better_collaboration.md"
}

resource "page" "reimagined" {
  title = "Reimagined"
  file = "instructions/reimagined/reimagined.md"
}

resource "page" "components" {
  title = "Components"
  file = "instructions/reimagined/components.md"
}
resource "page" "layouts" {
  title = "Layouts"
  file = "instructions/reimagined/layouts.md"
}

resource "page" "new_flow" {
  title = "New Flow"
  file = "instructions/flow/new_flow.md"
}

resource "page" "activities" {
  title = "Activities"
  file = "instructions/flow/activities.md"

  activities = {
    "exam" = resource.task.first_task
    "quizzes" = resource.quiz.quizzes
  }
}

resource "page" "actionable_feedback" {
  title = "Actionable Feedback"
  file = "instructions/behind_the_scenes/feedback.md"
}

resource "page" "creator_ui" {
  title = "Creator Ui"
  file = "instructions/behind_the_scenes/creator_ui.md"
}

resource "page" "modules" {
  title = "Modules"
  file = "instructions/behind_the_scenes/modules.md"
}

resource "page" "versioning" {
  title = "Versioning"
  file = "instructions/behind_the_scenes/versioning.md"
}
