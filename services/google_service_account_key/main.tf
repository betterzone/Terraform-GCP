provider "google" {
    # Pass the key from Vault to the Google provider
    credentials   = var.credentials
    project       = var.project
}
module "key" {
  source = "../../modules/google_iam/google_service_account_key"
  service_account_id = var.service_account_id
  public_key_type    = var.public_key_type
  key_algorithm      = var.key_algorithm
  private_key_type   = var.private_key_type
  public_key_data    = var.public_key_data
}