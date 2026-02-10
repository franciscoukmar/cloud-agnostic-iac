output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = try(aws_vpc.this[0].id, "")
}

output "aws_subnet_id" {
  description = "AWS Subnet ID"
  value       = try(aws_subnet.this[0].id, "")
}

output "azure_vnet_name" {
  description = "Azure VNet Name"
  value       = try(azurerm_virtual_network.this[0].name, "")
}

output "azure_subnet_id" {
  description = "Azure Subnet ID"
  value       = try(azurerm_subnet.this[0].id, "")
}

output "gcp_network_name" {
  description = "GCP Network Name"
  value       = try(google_compute_network.this[0].name, "")
}
