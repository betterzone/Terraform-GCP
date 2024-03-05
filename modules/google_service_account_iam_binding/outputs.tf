output "etag"  {
    description = "(Computed) The etag of the project's IAM policy."
    value       = google_service_account_iam_binding.svc.etag
}