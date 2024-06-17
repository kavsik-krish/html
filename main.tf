
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
  project     = "sdbs"
  region      = "sdb"
}

resource "google_sql_database_instance" "sdvs" {
  name     = "sdvs"
  database_version = "BSZD"
  region  = "sdb"
  settings {
    tier = "db-custom-1-3840"
  }
}
