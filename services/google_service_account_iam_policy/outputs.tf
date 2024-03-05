output "etag"  {
    description = "(Computed) The etag of the project's IAM policy."
    value       = module.svc_iam_policy.etag
}