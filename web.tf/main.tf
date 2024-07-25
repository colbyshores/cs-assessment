resource "google_compute_address" "static_ip" {
  name = "ipv4-address"
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.namespace}-${var.region}-vm-instance"
  machine_type = var.machine_type
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnet_id

    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }

  tags = ["http-server", "https-server", "ssh"]
  deletion_protection = "false"
}

