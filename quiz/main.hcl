resource "lab" "quiz" {
  title = "Quiz"
  description = "This is an example lab that shows how to add quizzes to your content."
  layout = resource.layout.single_column

  settings {
    idle {
      enabled = false
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"
      
      page "first" {
        reference = resource.page.first
      }
    }
  }
}   
