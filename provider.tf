terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.38.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
      version = "~>4"
    }
  }
}

provider "google" {
  project = var.project
  #ensures that credentials are not stored in git
  credentials = file("../credentials/credentials.json")
  region  = var.region
}

provider "google-beta" {
  project = var.project
  #ensures that credentials are not stored in git
  credentials = file("../credentials/credentials.json")
  region  = var.region
}
