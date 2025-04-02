resource "lab" "demo" {
  title = "Demo"
  description = `# Manage your datacenter with HCP management plane

**Lorem Ipsum** is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of **Letraset** sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

![image](https://images.unsplash.com/photo-1474546652694-a33dd8161d66?q=80&w=2684&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)
`

  settings {
    idle {
      enabled = false
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
        reference = resource.page.intro
      }

      page "learning_curve" {
        reference = resource.page.learning_curve
      }

      page "feedback" {
        reference = resource.page.poor_feedback
      }

      page "dependencies" {
        reference = resource.page.dependencies
      }

      page "constraints" {
        reference = resource.page.constraints
      }

      page "collaboration" {
        reference = resource.page.difficult_collaboration
      }

      page "conclusion" {
        reference = resource.page.conclusion
      }
    }

    chapter "goals" {
      title = "Goals"
      layout_name = "instruction_only"
      
      page "goals" {
        reference = resource.page.goals
      }

      page "lower_learning_curve" {
        reference = resource.page.lower_learning_curve
      }

      page "fast_feedback" {
        reference = resource.page.fast_feedback
      }

      page "explicitness" {
        reference = resource.page.explicitness
      }

      page "flexibility" {
        reference = resource.page.flexibility
      }

      page "better_collaboration" {
        reference = resource.page.better_collaboration
      }
    }

    chapter "reimagined" {
      title = "Reimagined"
      layout_name = "instruction_only"
      
      page "reimagined" {
        reference = resource.page.reimagined
      }

      page "components" {
        reference = resource.page.components
      }

      page "layouts" {
        reference = resource.page.layouts
      }
    }

    chapter "flow" {
      title = "Flow"
      layout_name = "split_screen"
      
      page "new_flow" {
        reference = resource.page.new_flow
      }

      page "activities" {
        reference = resource.page.activities  
      }
    }

    chapter "behind_the_scenes" {
      title = "Behind the Scenes"
      layout_name = "full_code"
      
      page "feedback" {
        reference = resource.page.actionable_feedback
      }

      page "creator_ui" {
        reference = resource.page.creator_ui
      }

      page "modules" {
        reference = resource.page.modules
      }

      page "versioning" {
        reference = resource.page.versioning
      }
    }
  }
}
