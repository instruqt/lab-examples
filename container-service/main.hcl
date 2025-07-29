resource "lab" "container_service" {
  title       = "Container Service"
  description = "This is an example lab with a single container sandbox and a service tab to display a web page hosted by the container."
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
