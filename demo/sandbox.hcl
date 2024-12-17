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

resource "container" "workstation" {
  image {
    name = "gcr.io/instruqt/debian"
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


resource "container" "vscode" {
  image {
    name = "gcr.io/instruqt/vscode:0.1.0"
  }

  resources {
    memory = 2048
  }

	network {
		id = resource.network.main.meta.id
	}

  port {
    local = 8000
    host = 8000
  }

  environment = {
    DEFAULT_FOLDER = "/home/coder/code"
  }

  volume {
    source = resource.copy.lab.destination
    destination = "/home/coder/code/lab"
  }
  volume {
    source = resource.copy.track.destination
    destination = "/home/coder/code/track"
  }
  
  health_check {
    timeout = "30s"

    http {
      address = "http://localhost:8000"
      success_codes = [200, 302]
    }
  }
}
