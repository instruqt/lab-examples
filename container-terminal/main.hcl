resource "lab" "container_terminal" {
  title       = "Container Terminal"
  description = "This is an example lab with a single container sandbox and a terminal tab."

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
        title     = "First"
        reference = resource.page.first
      }
    }
  }
}
