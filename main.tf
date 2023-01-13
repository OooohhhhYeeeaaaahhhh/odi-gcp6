terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.48.0"
      #source  =  "hashicorp/google-beta"
      #version = "latest"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone

}
