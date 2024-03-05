output "id" {
    description = "an identifier for the resource with format projects/{{project}}/serviceAccounts/{{account}}/keys/{{key}}"
    value = google_service_account_key.key.id
}
output "name" {
    description = "The name used for this key pair"
    value = google_service_account_key.key.name
}
output "public_key" {
    description = "The public key, base64 encoded"
    value = google_service_account_key.key.public_key
}
output "private_key" {
    description = "The private key in JSON format, base64 encoded. This is what you normally get as a file when creating service account keys through the CLI or web console. This is only populated when creating a new key."
    value = google_service_account_key.key.private_key
}
output "valid_after" {
    description = "The key can be used after this timestamp. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'."
    value = google_service_account_key.key.valid_after
}
output "valid_before" {
    description = "The key can be used before this timestamp. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'."
    value = google_service_account_key.key.valid_before
}