resource "lab" "in-use-assets" {
  title       = "Unitless Time"
  description = "Settings test with time durations that have no unit of time"
  layout      = resource.layout.simple

  settings {
    timelimit {
      duration = "30m"
      extend   = "15m"
    }

    idle {
      timeout = "10m"
    }
  }

  content {
    chapter "overview" {
      title = "Overview"

      page "introduction" {
        title     = "Intro…🥁…duction!"
        reference = resource.page.introduction
      }
    }
  }
}
