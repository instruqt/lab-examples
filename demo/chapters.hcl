resource "chapter" "introduction" {
  title = "Introduction"

  page "intro" {
    file = "instructions/introduction/intro.md"
  }

  page "learning_curve" {
    file = "instructions/introduction/learning_curve.md"
  }

  page "feedback" {
    file = "instructions/introduction/feedback.md"
  }

  page "dependencies" {
    file = "instructions/introduction/dependencies.md"
  }

  page "constraints" {
    file = "instructions/introduction/constraints.md"
  }

  page "collaboration" {
    file = "instructions/introduction/collaboration.md"
  }

  page "conclusion" {
    file = "instructions/introduction/conclusion.md"
  }
}

resource "chapter" "goals" {
  title = "Goals"

  page "lower_learning_curve" {
    file = "instructions/goals/lower_learning_curve.md"
  }

  page "fast_feedback" {
    file = "instructions/goals/fast_feedback.md"
  }

  page "explicitness" {
    file = "instructions/goals/explicitness.md"
  }

  page "flexibility" {
    file = "instructions/goals/flexibility.md"
  }

  page "better_collaboration" {
    file = "instructions/goals/better_collaboration.md"
  }
}

resource "chapter" "reimagined" {
  title = "Reimagined"

  page "components" {
    file = "instructions/reimagined/components.md"
  }
  page "layouts" {
    file = "instructions/reimagined/layouts.md"
  }
}

resource "chapter" "flow" {
  title = "Flow"

  page "new_flow" {
    file = "instructions/flow/new_flow.md"
  }
  page "activities" {
    file = "instructions/flow/activities.md"

    validation = {
      "exam" = resource.task.first_task
      "quizzes" = resource.quiz.quizzes
    }
  }
}

resource "chapter" "behind_the_scenes" {
  title = "Behind the Scenes"

  page "feedback" {
    file = "instructions/behind_the_scenes/feedback.md"
  }

  page "creator_ui" {
    file = "instructions/behind_the_scenes/creator_ui.md"
  }

  page "modules" {
    file = "instructions/behind_the_scenes/modules.md"
  }

  page "versioning" {
    file = "instructions/behind_the_scenes/versioning.md"
  }
}
