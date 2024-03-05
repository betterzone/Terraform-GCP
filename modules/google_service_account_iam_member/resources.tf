resource "google_service_account_iam_member" "svc" {
  service_account_id = var.service_account_id
  role    = var.iam_role
  member  = var.member
  
  dynamic "condition" {
    for_each = var.condition != null ? [var.condition] : []
    content {
      expression        = lookup(condition.value,"expression")
      title             = lookup(condition.value,"title")
      description       = lookup(condition.value,"description")
    }
  }
}