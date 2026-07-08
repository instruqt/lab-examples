resource "network" "main" {
  subnet = "10.62.0.0/24"
}

resource "container" "workstation" {
  image {
    name = "ubuntu:24.04"
  }

  command = ["sleep", "infinity"]

  network {
    id = resource.network.main.meta.id
  }
}

# one of the real track's 7 PGD cluster VMs (data-a1)
resource "vm" "data-a1" {
  image {
    name = "ubuntu:24.04"
  }

  resources {
    cpu    = 1
    memory = 1024
  }

  network {
    id = resource.network.main.meta.id
  }

  startup_script = file("scripts/vm/data-a1/startup.sh")
}

# topology broker
resource "exec" "workstation_bootstrap" {
  target  = resource.container.workstation
  script  = "scripts/exec/workstation_bootstrap/script.sh"
  timeout = "60s"
}
