resource "lab" "container_service" {
  title       = "Container Service"
  description = "This is an example lab with a single container sandbox and a service tab to display a web page hosted by the container."

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
