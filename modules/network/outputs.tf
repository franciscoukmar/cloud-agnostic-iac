output "network_id" {
  description = "El ID de la red creada"
  value       = aws_vpc.this.id
}

output "vnet_name" {
  description = "El nombre de la red virtual de Azure"
  value       = azurerm_virtual_network.this.name
}

output "gcp_network_name" {
  description = "El nombre de la red de Google Compute"
  value       = google_compute_network.this.name
}
