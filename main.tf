
resource "google_cloud_run_v2_service" "default" {
  name     = "ncdh"
  location = "asia-northeast1-b"
  project  = "lumen-fir-w1"

  template {
    containers {
      image = "urlimage"
    }
  }
}
