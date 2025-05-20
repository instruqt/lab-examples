resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "copy" "lab" {
  source      = "github.com/instruqt/lab-examples//demo"
  destination = data("lab")
}

resource "copy" "track" {
  source      = "github.com/instruqt/templates//instruqt-tracks/kubernetes"
  destination = data("track")
}

resource "container" "workstation" {
  image {
    name = "gcr.io/instruqt/debian"
  }

  resources {
    memory = 0
    list   = []
  }

  command = ["tail", "-f", "/dev/null"]

  network {
    id   = resource.network.main.meta.id
    list = []
  }

  volume {
    source      = "resource.copy.track.destination"
    destination = "/root/track"
  }
  volume {
    source      = resource.copy.track.destination
    destination = "/root/track"
  }
  list = []
}