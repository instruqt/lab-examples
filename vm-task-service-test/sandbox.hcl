resource "network" "main" {
  subnet = "10.60.0.0/24"
}

# Stands in for the V1 track's single "workshop" VM that hosted the whole
# docker-compose stack (Coder + Gitea + Grafana etc). Here it just serves a
# tiny HTTP endpoint so we have something for the service/task targets to hit.
resource "vm" "workshop" {
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

  startup_script = <<-EOF
    #!/bin/sh
    set -e
    mkdir -p /srv/www
    echo "workshop-vm-ready" > /srv/www/index.html
    nohup python3 -m http.server 8000 --directory /srv/www > /var/log/http.log 2>&1 &
  EOF
}

# Equivalent of the V1 track-level setup script: a chain of exec resources
# running directly on the VM (not inside a container), with output flowing
# to a later step via $EXEC_OUTPUT.
resource "exec" "provision" {
  target = resource.vm.workshop
  script = "scripts/exec/provision/script.sh"
  timeout = "60s"
}
