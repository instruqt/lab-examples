resource "lab" "task" {
  title = "Tasks"
  description = "This is an example lab that shows how to add tasks to your content."

  settings {
    idle {
      enabled = false
    }
  }

  layout "two_column" {
    default = true
    reference = resource.layout.two_column

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
      title = "Introduction"
      
      page "first" {
        title = "First"
        reference = resource.page.first
      }
    }
  }
}   
