resource "lab" "quiz" {
  title = "Quiz"
  description = "This is an example lab that shows how to add quizzes to your content."

  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
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
