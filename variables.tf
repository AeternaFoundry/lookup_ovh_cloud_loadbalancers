variable "cloud_loadbalancers_lookup" {
  description = <<EOT
Map of cloud_loadbalancers_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

