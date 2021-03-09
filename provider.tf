provider "google" {
  credentials = file("./creds/service-account.json")
  project     = "tim-home"
  region      = "europe-west1"
}
