resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "container" "nginx" {
  image {
    name = "nginx"
  }

  port {
    local = 80
    host  = 80
  }

  network {
    id = resource.network.main.meta.id
  }
}
