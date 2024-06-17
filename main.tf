
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
  project     = "jbk"
  region      = "jg"
}

resource "google_pubsub_topic" "jin" {
  name    = "jin"
  project = "jbk"
  region  = "us-central1-c"
}

resource "google_pubsub_subscription" "nhb" {
  name    = "nhb"
  topic   = google_pubsub_topic.jin.id
  project = "jbk"
  region  = "us-central1-c"
  ack_deadline_seconds = 77
  push_config {
    push_endpoint = "hhb"
  }
}
