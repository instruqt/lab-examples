resource "task" "http_ready" {
  description = "Verify the workshop VM's HTTP endpoint is serving"

  config {
    # The point of this test: target a vm resource directly on a task
    # condition, not a container. Docs (reference/content/task.md) say
    # "target: reference to container" but pkg/state/script.go implements
    # ExecuteVM() alongside ExecuteContainer(), so this should validate.
    target = resource.vm.workshop
  }

  condition "serves_index" {
    description = "http://localhost:8000/ returns workshop-vm-ready"

    check {
      script          = "scripts/task/http_ready/check.sh"
      failure_message = "The workshop VM isn't serving the expected index page yet."
    }
  }
}
