resource "lab" "in-use-assets" {
  title       = "In Use Assets"
  description = "Check our [read-me](./assets/README.md) manifest *alstublieft*"

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout      = resource.layout.simple

  content {
    chapter "overview" {
      title = "Overview"

      page "introduction" {
        title     = "Introduction"
        reference = resource.page.introduction
      }

      page "image" {
        title     = "Image"
        reference = resource.page.image
      }
    }
  }
}
