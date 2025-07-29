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
        layout = resource.layout.instructions_only
        reference = resource.page.first
      }

      page "second" {
        reference = resource.page.second
      }
    }

    chapter "imported" {
      title = "Imported"

      page "first" {
        reference = module.chapter.output.pages.first
      }

      page "second" {
        reference = module.chapter.output.pages.second
      }
    }
  }
}