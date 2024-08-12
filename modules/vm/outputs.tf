output "vm_public_ip" {
  description = "La dirección IP pública de la instancia EC2"
  value       = aws_instance.this.public_ip
}

output "azure_vm_id" {
  description = "El ID de la máquina virtual en Azure"
  value       = azurerm_virtual_machine.this.id
}

output "gcp_instance_name" {
  description = "El nombre de la instancia en Google Compute"
  value       = google_compute_instance.this.name
}
