resource "network" "main" {
	subnet = "10.0.5.0/24"
}

resource "copy" "lab" {
  source = "github.com/instruqt/lab-examples//demo"
  destination = data("lab")
}

resource "copy" "track" {
  source = "github.com/instruqt/templates//instruqt-tracks/kubernetes"
  destination = data("track")
}

resource "container" "ubuntu" {
  image {
    name = "ubuntu:noble-20241011"
  }

  resources {
    memory = "512"
  }

  command = ["tail", "-f", "/dev/null"]

	network {
		id = resource.network.main.meta.id
	}

  volume {
    source = resource.copy.lab.destination
    destination = "/root/lab"
  }
  volume {
    source = resource.copy.track.destination
    destination = "/root/track"
  }
}
