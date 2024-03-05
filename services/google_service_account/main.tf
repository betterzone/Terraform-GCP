provider "google" {
    # Pass the key from Vault to the Google provider
    credentials   = var.credentials
    project       = var.project
}
module "service_account" {
  source = "../../modules/google_iam/google_service_account"
  account_id   = var.account_id
  display_name = var.display_name
  description  = var.description
  project      = var.project
}