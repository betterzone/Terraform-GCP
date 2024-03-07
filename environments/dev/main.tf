provider "google" {
    # Pass the key from Vault to the Google provider
    #credentials   = var.credentials
}
module "service_account" {
  source = "../../modules/service_account"
  account_id   = "my-service-account"
  display_name = "My Service Account"
  project      = "test-demo"
}