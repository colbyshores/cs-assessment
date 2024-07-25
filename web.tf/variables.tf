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

variable "image" {
  description = "name of the gcp image"
  type        = string
  default     = "rocky-linux-cloud/rocky-linux-9-optimized-gcp"
}

variable "machine_type" {
  description = "machine instance type being deployed"
  type        = string
  default     = "n1-standard-1"
}

variable "subnet_id" {
  description = "subnet for instance deployment(generally public)"
  type        = string
  default     = ""
}
