resource "lab" "minimal" {
  title = "Minimal"
  description = "This is a minimal example lab."

  layout "minimal" {
    default = true
    source = resource.layout.minimal

    tab "terminal" {
      panel = "terminal"
      target = resource.terminal.shell
    }

    instructions {
      panel = "instructions"
    }
  }

  layout "instructions_only" {
    source = resource.layout.minimal

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      layout = "minimal"
      
      page "first" {
        layout = "instructions_only"
        source = resource.page.first
      }

      page "second" {
        source = resource.page.second
      }
    }
  }
}