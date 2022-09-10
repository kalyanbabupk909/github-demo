
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  project     = "qwiklabs-gcp-01-d52440073079"
  region      = "us-central1"
}


resource "google_service_account" "service_account" {
  account_id   = "kalyanbabupk909"
  display_name = "Service Account"
}