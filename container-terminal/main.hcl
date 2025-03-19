resource "lab" "container_terminal" {
  title       = "Container Terminal"
  description = "This is an example lab with a single container sandbox and a terminal tab."

  settings {
    idle {
      enabled = false
    }
  }

  layout "two_column" {
    default = true
    reference  = resource.layout.two_column

    tab "terminal" {
      panel  = "terminal"
      target = resource.terminal.shell
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        reference = resource.page.first
      }
    }
  }
}
