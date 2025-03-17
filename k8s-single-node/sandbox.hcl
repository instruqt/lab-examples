resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "k8s_cluster" "k3s" {
  network {
    id = resource.network.main.meta.id
  }
}

output "KUBECONFIG" {
  value = resource.k8s_cluster.k3s.kube_config.path
}

resource "container" "workstation" {
  image {
    name = "bitname/kubectl"
  }

  network {
    id = resource.network.main.meta.id
  }

  volume {
    source      = resource.k8s_cluster.k3s.kube_config.path
    destination = "/root/.kube/config"
  }
}
