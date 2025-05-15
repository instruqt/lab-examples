resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "kubernetes_cluster" "k3s" {
  network {
    id = resource.network.main.meta.id
  }
}

output "KUBECONFIG" {
  value = resource.kubernetes_cluster.k3s.kube_config.path
}

resource "container" "workstation" {
  image {
    name = "bitnami/kubectl"
  }

  entrypoint = ["/bin/bash"]

  network {
    id = resource.network.main.meta.id
  }

  volume {
    source      = resource.kubernetes_cluster.k3s.kube_config.path
    destination = "/root/.kube/config"
  }

  environment = {
    KUBECONFIG = "/root/.kube/config"
  }
}
