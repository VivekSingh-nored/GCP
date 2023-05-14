# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "sada-vivek-singh-sandbox"
  region  = "us-central1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "terroform-vivek"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}