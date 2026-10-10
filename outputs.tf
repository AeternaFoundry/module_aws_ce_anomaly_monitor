output "ce_anomaly_monitors_id" {
  description = "Map of id values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ce_anomaly_monitors_arn" {
  description = "Map of arn values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ce_anomaly_monitors_monitor_dimension" {
  description = "Map of monitor_dimension values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.monitor_dimension if v.monitor_dimension != null && length(v.monitor_dimension) > 0 }
}
output "ce_anomaly_monitors_monitor_specification" {
  description = "Map of monitor_specification values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.monitor_specification if v.monitor_specification != null && length(v.monitor_specification) > 0 }
}
output "ce_anomaly_monitors_monitor_type" {
  description = "Map of monitor_type values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.monitor_type if v.monitor_type != null && length(v.monitor_type) > 0 }
}
output "ce_anomaly_monitors_name" {
  description = "Map of name values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ce_anomaly_monitors_tags" {
  description = "Map of tags values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ce_anomaly_monitors_tags_all" {
  description = "Map of tags_all values across all ce_anomaly_monitors, keyed the same as var.ce_anomaly_monitors"
  value       = { for k, v in aws_ce_anomaly_monitor.ce_anomaly_monitors : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

