variable "ce_anomaly_monitors" {
  description = <<EOT
Map of ce_anomaly_monitors, attributes below
Required:
    - monitor_type
    - name
Optional:
    - monitor_dimension
    - monitor_specification
    - tags
    - tags_all
EOT

  type = map(object({
    monitor_type          = string
    name                  = string
    monitor_dimension     = optional(string)
    monitor_specification = optional(string)
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ce_anomaly_monitors : (
        v.monitor_specification == null || (can(jsondecode(v.monitor_specification)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

