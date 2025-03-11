resource "lab" "task" {
  title = "Tasks"
  description = "This is an example lab that shows how to add quizzes to your content."

  settings {
    idle {
      enabled = false
    }
  }

  layout "single_column" {
    default = true
    source = resource.layout.single_column

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      
      page "first" {
        source = resource.page.first
      }
    }
  }
}   
