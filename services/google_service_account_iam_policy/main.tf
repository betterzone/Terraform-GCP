provider "google" {
    # Pass the key from Vault to the Google provider
    credentials   = var.credentials
    project       = var.project
}
module "svc_iam_policy" {
  source = "../../modules/google_iam/google_service_account_iam_policy"

  service_account_id   = var.service_account_id
  iam_role      = var.iam_role
  members   = var.members
  condition = var.condition
}