resource "lab" "demo" {
  title = "Demo"
  description = "Showcase of the new lab format"

   layout "minimal" {
      default = true
      source = resource.layout.minimal

      tab "terminal" {
        panel = "terminal"
        target = resource.terminal.shell
      }

      instructions {
        panel = "instructions"
      }
   }

   content {
    chapter "introduction" {
      layout = "minimal"
      source = resource.chapter.introduction
    }
   }
}