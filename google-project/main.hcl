resource "lab" "google_project" {
  title = "Google Cloud Project"
  description = "How to chain cloud accounts and other resources together"

  settings {
    idle {
      enabled = false
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

