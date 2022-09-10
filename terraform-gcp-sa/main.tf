
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
  credentials = "keys1.json"
}


resource "google_compute_instance" "instance1" {
  name         = "my-first-vm-with-tf-json"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
   network_interface {
    network = "default"
}
}