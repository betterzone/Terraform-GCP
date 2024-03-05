
variable "service_account_id" {
    type = string
    description = "(Required) The Service account id of the Key Pair. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the account."
}
variable "key_algorithm" {
    type = string
    description = "(Optional) The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm. Valid values are listed at ServiceAccountPrivateKeyType (only used on create)"
    default = null
}
variable "public_key_type" {
    type = string
    description = "(Optional) The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format."
    default = null
}
variable "private_key_type" {
    type = string
    description = "(Optional) The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format."
    default = null
}
variable "public_key_data" {
    type = string
    description = "Optional) Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with public_key_type and private_key_type."
    default = null
}
variable "project" {
  description = "(Optional) The ID of the project in which the resource belongs. If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used."
  type        = string
  default     = null
}
