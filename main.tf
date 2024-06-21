
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
  project     = "acbjkj"
}

resource "google_cloudfunctions_function" "default" {
  name     = "djksbckj"
  runtime  = "kjsbkj"
  entry_point = "kjsbck"
  source_archive_bucket = "skjbk"
  trigger_http = true
  region = "mnax"
}
