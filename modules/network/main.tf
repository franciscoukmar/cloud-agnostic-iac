# AWS VPC
resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.environment}-vpc"
  }
}

# Azure Virtual Network
resource "azurerm_virtual_network" "this" {
  name                = "${var.environment}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
}

# Google Compute Network
resource "google_compute_network" "this" {
  name                    = "${var.environment}-network"
  auto_create_subnetworks = false
}
