resource "lab" "main" {
  title       = "Skeleton Lab"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n\nFor more information, check ./assets/README.md"

  layout = resource.layout.single_panel
  content {
    chapter "chapter-a" {
      title = "Chapter A"
      page "page-a1" {
        title     = "Page A1"
        reference = resource.page.page-a1
      }
    }
  }
}