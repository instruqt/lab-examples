resource "lab" "demo" {
  title = "Demo"
  description = "Showcase of the new lab format"

  layout "instruction_only" {
    default = true
    source = resource.layout.single_column

    instructions {
      panel = "instructions"
    }
  }

  layout "split_screen" {
    source = resource.layout.split_screen

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
    source = resource.layout.single_column

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
      layout = "instruction_only"
      
      page "intro" {
        source = resource.page.intro
      }

      page "learning_curve" {
        source = resource.page.learning_curve
      }

      page "feedback" {
        source = resource.page.poor_feedback
      }

      page "dependencies" {
        source = resource.page.dependencies
      }

      page "constraints" {
        source = resource.page.constraints
      }

      page "collaboration" {
        source = resource.page.difficult_collaboration
      }

      page "conclusion" {
        source = resource.page.conclusion
      }
    }

    chapter "goals" {
      title = "Goals"
      layout = "instruction_only"
      
      page "goals" {
        source = resource.page.goals
      }

      page "lower_learning_curve" {
        source = resource.page.lower_learning_curve
      }

      page "fast_feedback" {
        source = resource.page.fast_feedback
      }

      page "explicitness" {
        source = resource.page.explicitness
      }

      page "flexibility" {
        source = resource.page.flexibility
      }

      page "better_collaboration" {
        source = resource.page.better_collaboration
      }
    }

    chapter "reimagined" {
      title = "Reimagined"
      layout = "instruction_only"
      
      page "reimagined" {
        source = resource.page.reimagined
      }

      page "components" {
        source = resource.page.components
      }

      page "layouts" {
        source = resource.page.layouts
      }
    }

    chapter "flow" {
      title = "Flow"
      layout = "split_screen"
      
      page "new_flow" {
        source = resource.page.new_flow
      }

      page "activities" {
        source = resource.page.activities  
      }
    }

    chapter "behind_the_scenes" {
      title = "Behind the Scenes"
      layout = "full_code"
      
      page "feedback" {
        source = resource.page.actionable_feedback
      }

      page "creator_ui" {
        source = resource.page.creator_ui
      }

      page "modules" {
        source = resource.page.modules
      }

      page "versioning" {
        source = resource.page.versioning
      }
    }
  }
}
