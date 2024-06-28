
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

resource "google_storage_bucket" "default" {
  name     = "gs-bucket-name"
  location = "US"
  force_destroy = true
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_pubsub_topic" "default" {
  name     = "pubsub-topic-name"
  project  = "abc"
  labels = {
    environment = "dev"
  }
}

resource "google_eventarc_trigger" "default" {
  name     = "eventarc-trigger-name"
  project  = "abc"
  event_filters {
    attribute = "type"
    value     = "google.cloud.storage.object.v1.finalized"
  }
  destination {
    cloud_function {
      function = "projects/abc/locations/us-central1/functions/cloud-function-name"
    }
  }
  transport {
    pubsub {
      topic = google_pubsub_topic.default.id
    }
  }
}

resource "google_cloudfunctions_function" "default" {
  name     = "cloud-function-name"
  runtime  = "nodejs16"
  entry_point = "helloHTTP"
  source_archive_bucket = google_storage_bucket.default.name
  source_archive_object = "function.zip"
  trigger_http = true
  location = "us-central1"
  memory = 128
  timeout = 60
}
