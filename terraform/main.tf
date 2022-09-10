
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  project = "qwiklabs-gcp-01-64b3797eed70"
 
  # Configuration options
}


resource "google_storage_bucket" "gcs2" {
  name          = "auto-expiring-bucket-ukb-32423"
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