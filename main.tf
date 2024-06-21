
resource "google_cloud_run_v2_service" "default" {
  autogenerate_revision_name = true
  location                  = "dkjn"
  metadata {
    name = "kjsbk"
  }
  project = "macndn"
  template {
    containers {
      image = "kjankj"
    }
  }
}
