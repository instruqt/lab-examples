resource "lab" "k8s_single_node" {
  title       = "Single Node Kubernetes Cluster"
  description = "This is an example lab with a single node Kubernetes (k3s) cluster and a terminal tab."
  layout      = resource.layout.two_column

  content {
    chapter "example" {
      title = "Kubernetes Cluster and Terminal Example"

      page "introduction" {
        title     = "Introduction"
        reference = resource.page.introduction
        layout    = resource.layout.single_column
      }

      page "example" {
        title     = "Interacting with the cluster"
        reference = resource.page.example
        layout    = resource.layout.two_column
      }
    }
  }
}
