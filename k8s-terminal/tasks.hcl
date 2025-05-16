resource "task" "deploy_pod" {
  config {
    target = resource.container.workstation

    parallel_exec {
      condition = true
    }

    environment = {
      KUBECONFIG = "/root/.kube/config"
      PATH       = "/opt/bitnami/kubectl/bin/:$PATH"
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
