terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.5.0"
    }
  }
}

provider "google" {
  credentials = file("future-synapse-458014-v4-61b228f05e56.json")

  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
}
