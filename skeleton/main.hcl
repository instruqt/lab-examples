resource "lab" "main" {
  title       = "Skeleton Lab"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n\nFor more information, check ./assets/README.md"

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.single_panel
}