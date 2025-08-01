resource "page" "intro" {
  title = "Introduction"
  file = "instructions/introduction/intro.md"
}

resource "page" "learning_curve" {
  title = "Steep Learning Curve"
  file = "instructions/introduction/learning_curve.md"
}

resource "page" "poor_feedback" {
  title = "Slow Feedback and Limited Debuggability"
  file = "instructions/introduction/feedback.md"
}

resource "page" "dependencies" {
  title = "Hidden Dependencies and Complexity"
  file = "instructions/introduction/dependencies.md"
}

resource "page" "constraints" {
  title = "Content Format Limitations"
  file = "instructions/introduction/constraints.md"
}

resource "page" "difficult_collaboration" {
  title = "Difficult to Collaborate on, and Reuse Content"
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
  title = "Lowering the Learning Curve"
  file = "instructions/goals/lower_learning_curve.md"
}

resource "page" "fast_feedback" {
  title = "Faster Feedback and Easier Debugging"
  file = "instructions/goals/fast_feedback.md"
}

resource "page" "explicitness" {
  title = "Explicit Dependencies to Manage Complexity"
  file = "instructions/goals/explicitness.md"
}

resource "page" "flexibility" {
  title = "More Flexibility in Content Flows"
  file = "instructions/goals/flexibility.md"
}

resource "page" "better_collaboration" {
  title = "Easier Collaboration with Version Control"
  file = "instructions/goals/better_collaboration.md"
}

resource "page" "reimagined" {
  title = "Rich content"
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
  title = "Content Flow"
  file = "instructions/flow/new_flow.md"
}

resource "page" "activities" {
  title = "Activities"
  file = "instructions/flow/activities.md"

  activities = {
    "first_task" = resource.task.first_task
    "quizzes" = resource.quiz.quizzes
  }
}

resource "page" "actionable_feedback" {
  title = "Content Creator Feedback"
  file = "instructions/behind_the_scenes/feedback.md"
}

resource "page" "creator_ui" {
  title = "Content Creator UI"
  file = "instructions/behind_the_scenes/creator_ui.md"
}

resource "page" "modules" {
  title = "Reusable and Shareable Modules"
  file = "instructions/behind_the_scenes/modules.md"
}

resource "page" "versioning" {
  title = "Native Version Control"
  file = "instructions/behind_the_scenes/versioning.md"
}
