
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
  project     = "hvjkjh"
  region      = "gvvk"
}

resource "google_api_gateway_api" "hubjgv" {
  name     = "hubjgv"
  location = "gvvk"
  display_name = "hubjgv"
  config {
    openapi_spec {
      content = file("openapi.yaml")
    }
  }
}
