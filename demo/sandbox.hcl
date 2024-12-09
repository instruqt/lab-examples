resource "network" "main" {
	subnet = "10.0.5.0/24"
}

resource "copy" "lab" {
  source = "github.com/instruqt/lab-examples//demo"
  destination = data("lab")
}

resource "container" "ubuntu" {
  image {
    name = "ubuntu"
  }

  command = ["tail", "-f", "/dev/null"]

	network {
		id = resource.network.main.meta.id
	}

  volume {
    source = data("lab")
    destination = "/opt/lab"
  }
}
