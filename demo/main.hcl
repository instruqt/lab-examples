resource "lab" "demo" {
  title = "Demo"
  description = file("description.md")

  settings {
    idle {
      show_warning = true
      enabled = true
      timeout = "2m"
    }
  }

  layout "instruction_only" {
    default = true
    reference = resource.layout.single_column

    instructions {
      panel = "instructions"
    }
  }

  layout "split_screen" {
    reference = resource.layout.split_screen

    tab "code" {
      panel = "code"
      target = resource.editor.workstation
    }

    tab "shell" {
      panel = "terminal"
      target = resource.terminal.workstation
    }

    instructions {
      panel = "instructions"
    }
  }

  layout "full_code" {
    reference = resource.layout.single_column

    tab "lab" {
      active = true
      panel = "instructions"
      target = resource.editor.workstation
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      layout_name = "instruction_only"
      
      page "intro" {
        title = "Intro"
        reference = resource.page.intro
      }

      page "learning_curve" {
        title = "Learning Curve"
        reference = resource.page.learning_curve
      }

      page "feedback" {
        title = "Feedback"
        reference = resource.page.poor_feedback
      }

      page "dependencies" {
        title = "Dependencies"
        reference = resource.page.dependencies
      }

      page "constraints" {
        title = "Constraints"
        reference = resource.page.constraints
      }

      page "collaboration" {
        title = "Collaboration"
        reference = resource.page.difficult_collaboration
      }

      page "conclusion" {
        title = "Conclusion"
        reference = resource.page.conclusion
      }
    }

    chapter "goals" {
      title = "Goals"
      layout_name = "instruction_only"
      
      page "goals" {
        title = "Goals"
        reference = resource.page.goals
      }

      page "lower_learning_curve" {
        title = "Lower Learning Curve"
        reference = resource.page.lower_learning_curve
      }

      page "fast_feedback" {
        title = "Fast Feedback"
        reference = resource.page.fast_feedback
      }

      page "explicitness" {
        title = "Explicitness"
        reference = resource.page.explicitness
      }

      page "flexibility" {
        title = "Flexibility"
        reference = resource.page.flexibility
      }

      page "better_collaboration" {
        title = "Better Collaboration"
        reference = resource.page.better_collaboration
      }
    }

    chapter "reimagined" {
      title = "Reimagined"
      layout_name = "instruction_only"
      
      page "reimagined" {
        title = "Reimagined"
        reference = resource.page.reimagined
      }

      page "components" {
        title = "Components"
        reference = resource.page.components
      }

      page "layouts" {
        title = "Layouts"
        reference = resource.page.layouts
      }
    }

    chapter "flow" {
      title = "Flow"
      layout_name = "split_screen"
      
      page "new_flow" {
        title = "New Flow"
        reference = resource.page.new_flow
      }

      page "activities" {
        title = "Activities"
        reference = resource.page.activities  
      }
    }

    chapter "behind_the_scenes" {
      title = "Behind the Scenes"
      layout_name = "full_code"
      
      page "feedback" {
        title = "Feedback"
        reference = resource.page.actionable_feedback
      }

      page "creator_ui" {
        title = "Creator UI"
        reference = resource.page.creator_ui
      }

      page "modules" {
        title = "Modules"
        reference = resource.page.modules
      }

      page "versioning" {
        title = "Versioning"
        reference = resource.page.versioning
      }
    }
  }
}
