resource "lab" "experimental" {
  title       = "Experimental"
  description = "This is an experimental example lab."

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = false
      timeout = "15m"
    }
  }

  layout = resource.layout.two_column

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        title = "First"
        reference = resource.page.first
      }
    }
  }
}
