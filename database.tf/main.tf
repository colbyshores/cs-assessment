resource "google_sql_database_instance" "db_instance" {
  name             = "private-db-instance"
  database_version = "MYSQL_5_7"
  region           = var.region
  deletion_protection = "false"
  settings {
    tier = var.db_tier
    ip_configuration {
      ipv4_enabled    = true
      private_network = var.gcn_vpc_network_id
    }
  }
}

resource "google_sql_database" "db" {
  name     = "${var.namespace}-${var.region}-database"
  instance = google_sql_database_instance.db_instance.name
}
