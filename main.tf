
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
  project     = "hbbkjh"
}

resource "google_pubsub_topic" "trgv" {
  name = "trgv"
}

resource "google_pubsub_subscription" "uugybh" {
  name   = "uugybh"
  topic  = google_pubsub_topic.trgv.id
  ack_deadline_seconds = 10
}
