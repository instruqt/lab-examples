resource "lab" "quiz" {
  title = "Quiz"
  description = "This is an example lab that shows how to add quizzes to your content."

  settings {
    idle {
      enabled = false
    }
  }

  layout = resource.layout.single_column

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
