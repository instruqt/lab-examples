resource "container" "ubuntu" {
  image {
    name = "ubuntu"
  }

  resources {
    cpu    = 250
    memory = 256
  }
}
