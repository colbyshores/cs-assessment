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

variable "gcn_vpc_network_name" {
  description = "name of the vpc network that is being secured"
  type        = string
  default     = ""
}
