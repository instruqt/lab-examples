resource "lab" "k8s_single_node" {
  title       = "Single Node Kubernetes Cluster"
  description = "This is an example lab with a single node Kubernetes (k3s) cluster and a terminal tab."

  layout "two_column" {
    reference = resource.layout.two_column

    tab "terminal" {
      title  = "Terminal"
      panel  = "terminal"
      target = resource.terminal.shell
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "example" {
      title = "Example"

      page "introduction" {
        reference = resource.page.introduction
      }

      page "example" {
        reference = resource.page.example
      }
    }
  }
}
