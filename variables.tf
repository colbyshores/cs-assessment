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

variable "machine_type" {
  description = "machine type for instance"
  type        = string
  default     = "n1-standard-1"
}

variable "db_tier" {
  description = "machine size for database"
  type        = string
  default     = "db-f1-micro"
}

variable "gc_image" {
  description = "the name of the linux image to bootstrap the GC instance"
  type        = string
  default     = "rocky-linux-cloud/rocky-linux-9-optimized-gcp"
}
