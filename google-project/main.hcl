resource "lab" "google_project" {
  title = "Google Cloud Project"
  description = "How to chain cloud accounts and other resources together"

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.single_column

  content {
    chapter "first" {
      title = "First"

      page "first" {
        title = "First"
        reference = resource.page.first
      }
    }
  }
}

