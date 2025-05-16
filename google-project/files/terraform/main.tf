variable "zone" {
  type = string
}

provider "google" {
  zone = var.zone
}

resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "n2-standard-2"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

output "instance_name" {
  value = resource.google_compute_instance.default.name
}

output "instance_zone" {
  value = resource.google_compute_instance.default.zone
}

output "instance_ip" {
  value = resource.google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}
