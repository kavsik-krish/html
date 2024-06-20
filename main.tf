
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

resource "google_pubsub_topic" "topic" {
  name    = "ghgjvg"
  project = "gvvhgv"
}

resource "google_pubsub_subscription" "subscription" {
  name          = "gjgvhjgv"
  topic         = google_pubsub_topic.topic.name
  ack_deadline_seconds = 88
  push_config {
    push_endpoint = "hgvmvv"
  }
  project = "gvvhgv"
}
