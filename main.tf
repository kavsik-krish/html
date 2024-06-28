
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
  location = "us-central1"
}

resource "google_cloudfunctions_function" "default" {
  name     = "cloudfunctions-function-basic"
  runtime  = "nodejs16"
  entry_point = "helloHTTP"
  source_archive_bucket = "gs://cloudfunctions-source-bucket-basic"
  source_archive_object = "function.zip"
  trigger_http = true
  project  = "abc"
  region   = "us-central1"
}

resource "google_cloud_run_v2_service" "default" {
  name     = "cloudrun-service-basic"
  location = "us-central1"
  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
  project = "abc"
}

resource "google_dataflow_job" "default" {
  name     = "dataflow-job-basic"
  location = "us-central1"
  project  = "abc"
  template {
    launch_template {
      job_name = "dataflow-job-basic"
    }
    environment {
      temp_bucket = "gs://dataflow-temp-bucket-basic"
    }
    transform {
      outer_input {
        bigquery_source {
          table = "project:dataset.table"
        }
      }
      outer_output {
        bigquery_sink {
          table = "project:dataset.table"
        }
      }
    }
  }
}
