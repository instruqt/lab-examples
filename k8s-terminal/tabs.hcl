resource "terminal" "shell" {
  title = "Terminal"

  target = resource.k8s_cluster.k3s

  shell             = "/bin/bash"
  working_directory = "/root"
}
