
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
  project     = "hjbkkb"
  region      = "hbb hbi"
}

resource "google_sql_database_instance" "efhb" {
  name         = "efhb"
  database_version = "ubhbb"
  region       = "hbb hbi"
  settings {
    tier = "hbibhj"
  }
}
