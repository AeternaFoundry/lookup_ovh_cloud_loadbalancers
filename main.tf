data "ovh_cloud_loadbalancers" "cloud_loadbalancers_lookup" {
  for_each = var.cloud_loadbalancers_lookup

  service_name = each.value.service_name
}

