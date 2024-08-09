output "network_id" {
  description = "networkID"
  value       = module.network.network_id
}

output "vm_ip_address" {
  description = "VM IP"
  value       = module.vm.ip_address
}
