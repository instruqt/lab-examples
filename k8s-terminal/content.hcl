resource "page" "introduction" {
  title = "Single node Kubernetes cluster"
  file = "instructions/introduction.md"
}

resource "page" "example" {
  title = "Single node Kubernetes cluster"
  file = "instructions/example.md"

  activities = {
    deploy_pod = resource.task.deploy_pod
  }
}
