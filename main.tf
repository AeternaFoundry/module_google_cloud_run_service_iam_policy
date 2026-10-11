resource "google_cloud_run_service_iam_policy" "cloud_run_service_iam_policies" {
  for_each = var.cloud_run_service_iam_policies

  policy_data = each.value.policy_data
  service     = each.value.service
  location    = each.value.location
  project     = each.value.project
}

