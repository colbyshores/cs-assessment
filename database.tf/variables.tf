variable "project" {
  description = "name of the GCP project"
  type        = string
  default     = ""
}

variable "region" {
  description = "region for which resources are deployed to"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "name of the customer account"
  type        = string
  default     = ""
}  

variable "db_tier" {
  description = "tier of the database engine"
  type        = string
  default     = ""
}

variable "gcn_vpc_network_id" {
  description = "vpc network for with the database is deployed in to"
  type        = string
  default     = ""
}
