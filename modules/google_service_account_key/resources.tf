resource "google_service_account_key" "key" {
  service_account_id = var.service_account_id
  public_key_type    = var.public_key_type
  key_algorithm      = var.key_algorithm
  private_key_type   = var.private_key_type
  public_key_data    = var.public_key_data
}