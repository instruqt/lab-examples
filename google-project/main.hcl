resource "lab" "google_project" {
  title = "Google Cloud Project"
  description = "How to chain cloud accounts and other resources together"

  settings {
    idle {
      enabled = false
    }
  }

  layout "single_column" {
    reference = resource.layout.single_column

    tab "cli" {
      panel = "terminal"
      target = resource.terminal.cli
    }

    tab "vm" {
      panel = "terminal"
      target = resource.terminal.vm
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "first" {
      title = "First"
      layout_name = "single_column"

      page "first" {
        title = "First"
        reference = resource.page.first
      }
    }
  }
}

