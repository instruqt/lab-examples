resource "lab" "container_service" {
  title       = "Container Service"
  description = "This is an example lab with a single container sandbox and a service tab to display a web page hosted by the container."

  settings {
    idle {
      enabled = false
    }
  }

  layout "two_column" {
    default = true
    reference  = resource.layout.two_column

    instructions {
      panel = "right"
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
