resource "lab" "in-use-assets" {
  title       = "In Use Assets"
  description = "Check our [read-me](./assets/README.md) manifest *alstublieft*"
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
        layout    = resource.layout.layout_1
      }
    }
  }
}
