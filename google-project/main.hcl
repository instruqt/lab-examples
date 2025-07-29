resource "lab" "google_project" {
  title = "Google Cloud Project"
  description = "How to chain cloud accounts and other resources together"
  layout = resource.layout.single_column

  settings {
    idle {
      enabled = false
    }
  }

  content {
    chapter "first" {
      title = "First"
      layout = resource.layout.single_column

      page "first" {
        title = "First"
        reference = resource.page.first
      }
    }
  }
}

