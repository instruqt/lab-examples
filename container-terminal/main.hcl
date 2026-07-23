resource "lab" "container_terminal" {
  title       = "Container Terminal"
  description = "This is an example lab with a single container sandbox and a terminal tab."

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.two_column

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        title     = "First"
        reference = resource.page.first
      }
    }
  }
}
