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

# topology broker
resource "exec" "workstation_bootstrap" {
  target  = resource.container.workstation
  script  = "scripts/exec/workstation_bootstrap/script.sh"
  timeout = "60s"
}

# one of the real track's 7 PGD cluster VMs (data-a1). Depends on the
# topology broker so it isn't already polling before workstation is
# actually serving the pubkey.
resource "vm" "data-a1" {
  depends_on = ["resource.exec.workstation_bootstrap"]

  image {
    name = "ubuntu:24.04"
  }

  resources {
    cpu    = 2
    memory = 2048
  }

  network {
    id = resource.network.main.meta.id
  }

  startup_script = file("scripts/vm/data-a1/startup.sh")
}
