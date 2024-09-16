output "vpc_id" {
  value       = join("", google_compute_network.vpc[*].id)
  description = "The outputs of the created VPC."
}

output "gateway_ipv4" {
  value       = join("", google_compute_network.vpc[*].gateway_ipv4)
  description = "The IPv4 address of the gateway"
}

output "self_link" {
  value       = join("", google_compute_network.vpc[*].self_link)
  description = "The URI of the created resource"
}

output "numeric_id" {
  value       = join("", google_compute_network.vpc[*].numeric_id)
  description = "The unique identifier for the resource. This identifier is defined by the server."
}