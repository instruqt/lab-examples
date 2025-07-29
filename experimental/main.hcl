resource "lab" "experimental" {
  title       = "Experimental"
  description = "This is an experimental example lab."
  layout      = resource.layout.two_column

  settings {
    idle {
      enabled = false
    }
  }

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
