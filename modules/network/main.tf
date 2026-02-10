# AWS Resources
resource "aws_vpc" "this" {
  count      = var.cloud_provider == "aws" ? 1 : 0
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "this" {
  count             = var.cloud_provider == "aws" ? 1 : 0
  vpc_id            = aws_vpc.this[0].id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a" # Consider making this a variable
  tags = {
    Name = "${var.environment}-subnet"
  }
}

# Azure Resources
resource "azurerm_virtual_network" "this" {
  count               = var.cloud_provider == "azure" ? 1 : 0
  name                = "${var.environment}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
}

resource "azurerm_subnet" "this" {
  count                = var.cloud_provider == "azure" ? 1 : 0
  name                 = "${var.environment}-subnet"
  resource_group_name  = var.azure_resource_group
  virtual_network_name = azurerm_virtual_network.this[0].name
  address_prefixes     = ["10.0.1.0/24"]
}

# Google Resources
resource "google_compute_network" "this" {
  count                   = var.cloud_provider == "google" ? 1 : 0
  name                    = "${var.environment}-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "this" {
  count         = var.cloud_provider == "google" ? 1 : 0
  name          = "${var.environment}-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1" # Consider making this a variable
  network       = google_compute_network.this[0].id
}
