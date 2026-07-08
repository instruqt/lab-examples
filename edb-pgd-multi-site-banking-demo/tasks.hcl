resource "task" "ssh_ready" {
  description = "Verify workstation can SSH into data-a1 by hostname alone"

  config {
    target = resource.container.workstation
  }

  condition "reaches_data_a1" {
    description = "ssh root@data-a1 succeeds using the key served from workstation's own topology broker"

    check {
      script          = "scripts/task/ssh_ready/check.sh"
      failure_message = "workstation could not SSH into data-a1 yet"
    }
  }
}
