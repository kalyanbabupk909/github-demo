
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


resource "google_compute_instance" "instance" {
  name         = "my-first-vm-with-tf"
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