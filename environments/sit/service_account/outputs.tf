output "id" {
    description = "an identifier for the resource with format projects/{{project}}/serviceAccounts/{{email}}"
    value = module.service_account.id
}
output "email" {
    description = "The e-mail address of the service account. This value should be referenced from any google_iam_policy data sources that would grant the service account privileges."
    value = module.service_account.email
}
output "name" {
    description = "The fully-qualified name of the service account."
    value = module.service_account.name
}
output "unique_id" {
    description = "The unique id of the service account."
    value = module.service_account.unique_id
}