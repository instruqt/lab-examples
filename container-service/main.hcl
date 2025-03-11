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
    source  = resource.layout.two_column

    tab "nginx" {
      panel  = "left"
      target = resource.service.nginx
    }

    instructions {
      panel = "right"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        source = resource.page.first
      }
    }
  }
}
