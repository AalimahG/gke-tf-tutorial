provider "google" {
  credentials = file("./creds/service-account.json")
  project     = "first-torus-300007"
  region      = "europe-west1"
  version     = "~> 3.59.0"
}
