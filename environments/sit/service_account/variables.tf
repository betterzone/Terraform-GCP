
variable "account_id" {
    type = string
    description = "(Required) The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created."
}
variable "display_name" {
    type = string
    description = "(Optional) The display name for the service account. Can be updated without creating a new resource."
    default = null
}
variable "description" {
    type = string
    description = "(Optional) A text description of the service account. Must be less than or equal to 256 UTF-8 bytes."
    default = null 
}
variable "project" {
    type = string
    description = "(Optional) The ID of the project that the service account will be created in. Defaults to the provider project configuration."
    default = null
}
variable "timeouts" {
  description = "This resource provides the following Timeouts configuration options:"
  type = string
  default = "5m"
}