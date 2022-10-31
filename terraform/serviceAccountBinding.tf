#grant access to service account using iam binding
resource "google_project_iam_binding" "gke-service-account-iam" {
  project = "sound-decoder-366111"
  role    = "roles/container.admin"
  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}"
  ]
}
#grant access to service account using iam binding
resource "google_project_iam_binding" "vm-service-account-iam" {
  project = "sound-decoder-366111"
  role    = "roles/container.admin"
  members = [
    "serviceAccount:${google_service_account.vm-service-account.email}"
  ]
}