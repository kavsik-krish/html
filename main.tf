
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
  project     = "hjb"
}

resource "google_cloudfunctions_function" "default" {
  name     = "oijijn"
  runtime  = "jnkh h"
  entry_point = "jknh"
  source_archive_bucket = "jkh hj"
  trigger_http = true
  region = "hbjbk"
}
