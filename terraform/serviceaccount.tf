#it's recommended to create service account for gke 
resource "google_service_account" "gke-service-account" {
  account_id = "gke-service-account"
  project    = "sound-decoder-366111"
}
resource "google_service_account" "vm-service-account" {
  account_id = "vm-service-account"
  project    = "sound-decoder-366111"
}