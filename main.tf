
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  credentials = file("keys.json")
  project     = "hjvvn"
  region      = "hvjvh"
}

resource "google_sql_database_instance" "default" {
  name         = "hghhj"
  database_version = "hjvhjv"
  region       = "hvjvh"
  settings {
    tier = "hvjvh"
  }
}
