output "etag"  {
    description = "(Computed) The etag of the service account's IAM policy."
    value       = google_service_account_iam_policy.svc.etag
}