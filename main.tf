
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
  project     = "gvvhgv"
  region      = "ghvbv"
}

resource "google_pubsub_topic" "default" {
  name    = "ghgjvg"
  project = "gvvhgv"
}

resource "google_pubsub_subscription" "default" {
  name          = "gjgvhjgv"
  topic         = google_pubsub_topic.default.name
  ack_deadline_seconds = 88
  push_config {
    push_endpoint = "hgvmvv"
  }
  project = "gvvhgv"
}
