module "network" {
  source = "./modules/network"

  providers = {
    aws     = aws
    azurerm = azurerm
    google  = google
  }

  environment    = var.environment
  cloud_provider = var.cloud_provider
  
  # Azure specific
  azure_location       = var.azure_location
  azure_resource_group = var.azure_resource_group
}

module "vm" {
  source = "./modules/vm"

  providers = {
    aws     = aws
    azurerm = azurerm
    google  = google
  }

  environment    = var.environment
  cloud_provider = var.cloud_provider
  admin_password = var.admin_password
  
  # AWS
  aws_ami           = var.aws_ami
  aws_instance_type = var.aws_instance_type
  
  # Azure
  azure_location       = var.azure_location
  azure_resource_group = var.azure_resource_group
  azure_vm_size        = var.azure_vm_size
  
  # Google
  gcp_machine_type = var.gcp_machine_type
  gcp_zone         = var.gcp_zone
  gcp_network_name = module.network.gcp_network_name # from output
  
  # Network Connections
  subnet_id_aws      = module.network.aws_subnet_id
  azure_subnet_id    = module.network.azure_subnet_id
}
