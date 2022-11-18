provider "google" {
    credentials   = file("teste000023-b1f30b0480f2.json")          // export GCLOUD_KEYFILE_JSON="gcp-creds.json"
    project       = "teste000023"                                      // export GCLOUD_PROJECT="teste01"
    region        = "us-west1"                                     // export GCLOUD_REGION="us-west1"
    zone          = "us-west1-c"                                   // export GCLOUD_REGION="us-west1-c"
}

#resource "google_project_service" "project" {
#  project = "teste01"
#  service = "compute.googleapis.com"  
  
#  timeouts {
#    create = "30m"
#    update = "40m"
#  }
#  disable_dependent_services = true
#}

resource "google_compute_instance" "default" {
    name = "my-gcp-server"
    machine_type = "f1-micro"
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-10"
      }
    }
    network_interface {
      network = "default" // this enable private ip address
      access_config {}    // this enable public ip address
    }
}
// tarefa : 
// 1 - criar rede
// 2 - criar subnet (assinar uma região)
// 3 - criar uma vm nessa subrede