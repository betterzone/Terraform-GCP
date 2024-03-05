
variable "members" {
    type = list
    description = "(Required except for google_project_iam_audit_config) Identities that will be granted the privilege in role. Each entry can have one of the following values: user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com."
}
variable "iam_role" {
    type = string
    description = "(Required except for google_project_iam_audit_config) The role that should be applied. Only one google_project_iam_binding can be used per role. Note that custom roles must be of the format [projects|organizations]/{parent-name}/roles/{role-name}."
}
variable "service_account_id" {
    type = string
    description = "(Required) The fully-qualified name of the service account to apply policy to."
}

variable "condition" {
  description = "(Optional) An IAM Condition for a given binding. Structure is documented below."
  type = object({
    expression      = string #(Required) Textual representation of an expression in Common Expression Language syntax.
    title           = string #(Required) A title for the expression, i.e. a short string describing its purpose.
    description     = string #(Optional) An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  })
  default = null
}
variable "project" {
  description = "(Optional) The ID of the project in which the resource belongs. If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used."
  type        = string
  default     = null
}
