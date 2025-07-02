module "chapter" {
  source = "./modules/chapter"
}

resource "lab" "minimal" {
  title = "Minimal"
  description = "This is a minimal example lab."

  settings {
    idle {
      enabled = false
    }
  }

  layout "minimal" {
    default = true
    reference = resource.layout.minimal

    tab "terminal" {
      panel = "terminal"
      target = resource.terminal.shell
    }

    instructions {
      panel = "instructions"
    }
  }

  layout "instructions_only" {
    reference = resource.layout.minimal

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      layout_name = "minimal"
      
      page "first" {
        title = "First"
        layout_name = "instructions_only"
        reference = resource.page.first
      }

      page "second" {
        title = "Second"
        reference = resource.page.second
      }
    }

    chapter "imported" {
      title = "Imported"

      page "first" {
        title = "First"
        reference = module.chapter.output.pages.first
      }

      page "second" {
        title = "Second"
        reference = module.chapter.output.pages.second
      }
    }
  }
}