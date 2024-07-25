resource "google_compute_firewall" "allow_private" {
  name    = "allow-private"
  network = var.gcn_vpc_network_name

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  source_ranges = ["10.0.1.0/24", "10.0.2.0/24"]
}

resource "google_compute_firewall" "allow_public_ingress" {
  name    = "allow-public-ingress"
  network = var.gcn_vpc_network_name

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }

  target_tags = ["http-server", "https-server", "ssh"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_all_egress" {
  name    = "allow-all-egress"
  network = var.gcn_vpc_network_name

  allow {
    protocol = "TCP"
    ports    = ["0-65535"]
  }

  direction = "EGRESS"
  destination_ranges = ["0.0.0.0/0"]
}
