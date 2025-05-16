resource "lab" "k8s_single_node" {
  title       = "Single Node Kubernetes Cluster"
  description = "This is an example lab with a single node Kubernetes (k3s) cluster and a terminal tab."

  layout "single_column" {
    reference = resource.layout.single_column

    instructions {
      panel = "instructions"
    }
  }

  layout "two_column" {
    default   = true
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
      title = "Kubernetes Cluster and Terminal Example"

      page "introduction" {
        title       = "Introduction"
        reference   = resource.page.introduction
        layout_name = "single_column"
      }

      page "example" {
        title       = "Interacting with the Kubernetes Cluster"
        reference   = resource.page.example
        layout_name = "two_column"
      }
    }
  }
}
