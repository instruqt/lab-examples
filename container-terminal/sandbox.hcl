resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "container" "ubuntu" {
  image {
    name = "ubuntu"
  }

  network {
    id = resource.network.main.meta.id
  }
}
