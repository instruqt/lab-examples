resource "lab" "task" {
  title = "Tasks"
  description = "This is an example lab that shows how to add tasks to your content."
  layout = resource.layout.two_column

  settings {
    idle {
      enabled = false
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
