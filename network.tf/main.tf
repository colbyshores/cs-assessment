locals {
  vpc_label     = "${var.namespace}-${var.region}-vpc"
}

resource "google_compute_network" "vpc_network" {
  name = local.vpc_label
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "private-subnet"
  ip_cidr_range = "10.0.2.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_router" "nat_router" {
  name    = "nat-router"
  region  = var.region
  network = google_compute_network.vpc_network.id
}

resource "google_compute_router_nat" "nat_config" {
  name                         = "nat-config"
  router                       = google_compute_router.nat_router.name
  region                       = var.region
  nat_ip_allocate_option       = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

resource "google_compute_global_address" "private_ip_address" {
  name          = "private-ip-address"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.vpc_network.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  #this different provider is a workaround to resolve this known bug
  #https://github.com/hashicorp/terraform-provider-google/issues/16275#issuecomment-1825752152
  provider                = google-beta
  network                 = google_compute_network.vpc_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}
