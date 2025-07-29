resource "lab" "experimental" {
  title       = "Experimental"
  description = "This is an experimental example lab."

  settings {
    idle {
      enabled = false
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
