resource "lab" "container_terminal" {
  title       = "Container Terminal"
  description = "This is an example lab with a single container sandbox and a terminal tab."
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
        reference = resource.page.first
      }
    }
  }
}
