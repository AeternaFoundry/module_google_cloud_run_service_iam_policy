variable "cloud_run_service_iam_policies" {
  description = <<EOT
Map of cloud_run_service_iam_policies, attributes below
Required:
    - policy_data
    - service
Optional:
    - location
    - project
EOT

  type = map(object({
    policy_data = string
    service     = string
    location    = optional(string)
    project     = optional(string)
  }))
}

