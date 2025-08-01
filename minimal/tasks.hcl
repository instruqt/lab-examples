resource "task" "first_task" {
  description = "task description"
  config {
      target = resource.container.ubuntu
      
      parallel_exec {
        condition = true
      }
    }

  condition "file_exists" {
    description = "The file exists"

    config {
      target = resource.container.ubuntu
    }

    check {
      script          = "scripts/first_task/file_exists.sh"
      failure_message = "The file could not be found at /tmp/hello"
    }

    solve {
      script  = "scripts/first_task/solve.sh"
    }
  }

  condition "contents_match" {
    description = "The contents of the file contains the word 'world'"

    check {
      script          = "scripts/first_task/contents_match.sh"
      failure_message = "The file does not contain the word 'world'"
    }
  }
}