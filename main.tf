
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
  project     = "abc"
}

resource "google_pubsub_topic" "default" {
  name     = "pubsub-topic-basic"
  project  = "abc"
  labels = {
    environment = "dev"
  }
}

resource "google_pubsub_subscription" "default" {
  name     = "pubsub-subscription-basic"
  topic    = google_pubsub_topic.default.id
  project  = "abc"
  labels = {
    environment = "dev"
  }
}
