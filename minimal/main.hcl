module "chapter" {
  source = "./modules/chapter"
}

resource "lab" "minimal" {
  title = "Minimal"
  description = "This is a minimal example lab."
  layout = resource.layout.minimal

  settings {
    idle {
      enabled = false
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      layout = resource.layout.minimal
      
      page "first" {
        title = "First"
        layout = resource.layout.instructions_only
        reference = resource.page.first
      }

      page "second" {
        title = "Second"
        reference = resource.page.second
      }
    }

    chapter "imported" {
      title = "Imported"

      page "first" {
        title = "First"
        reference = module.chapter.output.pages.first
      }

      page "second" {
        title = "Second"
        reference = module.chapter.output.pages.second
      }
    }
  }
}