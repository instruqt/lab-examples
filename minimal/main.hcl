resource "lab" "minimal" {
  title = "Minimal"
  description = "This is a minimal example lab."

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
      source = resource.chapter.introduction
    }
   }
}