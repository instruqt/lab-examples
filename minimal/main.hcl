module "chapter" {
  source = "./modules/chapter"
}

resource "lab" "minimal" {
  title = "Minimal"
  description = "This is a minimal example lab."

  settings {
    idle {
      enabled = false
    }
  }

  layout = resource.layout.minimal

  content {
    chapter "introduction" {
      title = "Introduction"
      
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