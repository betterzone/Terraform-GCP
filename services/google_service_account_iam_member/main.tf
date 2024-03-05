provider "google" {
    # Pass the key from Vault to the Google provider
    credentials   = var.credentials
    project       = var.project
}
module "iam" {
  source = "../../modules/google_iam/google_service_account_iam_member"
  service_account_id = var.service_account_id
  iam_role    = var.iam_role
  member  = var.member
  condition = var.condition
}