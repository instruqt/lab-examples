resource "lab" "k8s_single_node" {
  title       = "Single Node Kubernetes Cluster"
  description = "This is an example lab with a single node Kubernetes (k3s) cluster and a terminal tab."

  settings {
    idle {
      enabled = false
    }
  }

  layout "two_column" {
    default   = true
    reference = resource.layout.two_column

    tab "terminal" {
      panel  = "terminal"
      target = resource.terminal.shell
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        reference = resource.page.first
      }
    }
  }
}
