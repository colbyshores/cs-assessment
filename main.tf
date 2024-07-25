module "network" {
  source               = "./network.tf"
  project              = var.project
  region               = var.region
  namespace            = var.namespace
}

module "security" {
  source               = "./security.tf"
  project              = var.project
  region               = var.region
  namespace            = var.namespace
  gcn_vpc_network_name = module.network.gc_network_vpc_network_name
  depends_on           = [module.network]
}

module "database" {
  source               = "./database.tf"
  project              = var.project
  region               = var.region
  namespace            = var.namespace
  db_tier              = var.db_tier
  gcn_vpc_network_id   = module.network.gc_network_vpc_network_id
  depends_on           = [module.network]
}

module "web" {
  source                         = "./web.tf"
  project                        = var.project
  region                         = var.region
  namespace                      = var.namespace
  machine_type                   = var.machine_type
  image                          = var.gc_image
  subnet_id                      = module.network.gc_subnetwork_public_subnet_id
  depends_on                     = [module.network]
}
