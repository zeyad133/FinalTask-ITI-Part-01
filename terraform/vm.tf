#create private VM
resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }
  #associate it with management subnet
  network_interface {
    network = google_compute_network.main-network.id
    #private subnet
    subnetwork = google_compute_subnetwork.management_subnet.id
  }
  service_account {
    email  = google_service_account.vm-service-account.email
    scopes = ["cloud-platform"]
  }
}
