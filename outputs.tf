output "cloud_loadbalancers_lookup_loadbalancers" {
  description = "Map of loadbalancers values across all cloud_loadbalancers_lookup, keyed the same as var.cloud_loadbalancers_lookup except keys with no loadbalancers are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancers.cloud_loadbalancers_lookup : k => v.loadbalancers if v.loadbalancers != null && length(v.loadbalancers) > 0 }
}
output "cloud_loadbalancers_lookup_service_name" {
  description = "Map of service_name values across all cloud_loadbalancers_lookup, keyed the same as var.cloud_loadbalancers_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancers.cloud_loadbalancers_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

