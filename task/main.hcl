resource "lab" "task" {
  title = "Tasks"
  description = "This is an example lab that shows how to add tasks to your content."

  settings {
    idle {
      enabled = false
    }
  }

  layout = resource.layout.two_column

  content {
    chapter "introduction" {
      title = "Introduction"
      
      page "first" {
        reference = resource.page.first
      }
    }
  }
}   
