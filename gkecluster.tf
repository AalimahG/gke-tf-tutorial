resource "google_container_cluster" "gke-cluster" {
  name               = "cno-gke-dataplane"
  network            = "default"
  location           = "europe-west1-b"
  initial_node_count = 2
}

resource "null_resource" "get-credentials" {

 # do not start before resource gke-terraform is provisioned
 depends_on = [google_container_cluster.gke-cluster] 

 provisioner "local-exec" {
   command = "gcloud container clusters get-credentials ${google_container_cluster.gke-cluster.name} --zone=europe-west1-b"
 }
}
