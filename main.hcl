resource "lab" "main" {
  title       = "lab-test-matea"
  description = "Outline the lab's learning objectives, topics, and prerequisites."

  layout = resource.layout.single_panel
}
