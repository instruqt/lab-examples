resource "page" "introduction" {
  file = "instructions/introduction.md"
}

resource "page" "example" {
  file = "instructions/example.md"

  activities = {
    deploy_pod = resource.task.deploy_pod
  }
}
