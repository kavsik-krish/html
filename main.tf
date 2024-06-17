
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  credentials = "keys.json"
  project     = "xfbb"
  region      = "fsbfsb"
}

resource "google_pubsub_topic" "szdv" {
  name     = "szdv"
  location = "us-central1-c"
}

resource "google_pubsub_subscription" "sdbbf" {
  name          = "sdbbf"
  topic         = google_pubsub_topic.szdv.id
  ack_deadline_seconds = 56
  push_config {
    push_endpoint = "fbnb"
  }
  location = "us-central1-c"
}
