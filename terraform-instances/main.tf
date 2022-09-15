terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.36.0"
    }
  }
}

provider "google" {
    project = "qwiklabs-gcp-01-b9a512a784b3"
  # Configuration options
}

resource "google_compute_instance" "instances" {
  name         = "instance-from-tf"
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
