
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  project = "qwiklabs-gcp-02-06a3ae9ea2e6"
 
  # Configuration options
}


resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket-ukb"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}