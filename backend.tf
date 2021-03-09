terraform {
  backend "gcs" {
    bucket = "first-torus-300007-tfstate"
    credentials = "./creds/service-account.json"
  }
}
