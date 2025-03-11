resource "task" "helloworld" {
  config {
    target = resource.container.ubuntu
  }

  condition "file_exists" {
    description = "The file `/tmp/hello` should exist"

    check {
      script = "scripts/helloworld/file_exists.sh"
      failure_message = "The file `/tmp/hello` does not exist"
    }
  }

  condition "file_contains" {
    description = "The file should contain the text `world`"

    check {
      script = "scripts/helloworld/contents_match.sh"
      failure_message = "The file `/tmp/hello` does not contain the text `world`"
    }
  }
}