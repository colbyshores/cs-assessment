output "gc_subnetwork_public_subnet_id" {
  value = google_compute_subnetwork.public_subnet.id
}

output "gc_subnetwork_private_subnet_id" {
  value = google_compute_subnetwork.private_subnet.id
}

output "gc_network_vpc_network_id" {
  value = google_compute_network.vpc_network.id
}

output "gc_network_vpc_network_name" {
  value = google_compute_network.vpc_network.name
}
