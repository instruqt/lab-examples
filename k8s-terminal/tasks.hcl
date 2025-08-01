resource "task" "deploy_pod" {
  description = "Deploy a pod to the Kubernetes cluster"
  
  config {
    target = resource.container.workstation

    parallel_exec {
      condition = true
    }
  }

  condition "pod_deployed" {
    description = "The pod is deployed"

    check {
      script          = "scripts/deploy_pod/pod_deployed.sh"
      failure_message = "The pod is not deployed"
    }

    solve {
      script = "scripts/deploy_pod/deploy_pod.sh"
    }
  }
}
