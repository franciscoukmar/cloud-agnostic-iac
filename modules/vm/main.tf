# AWS EC2 Instance
resource "aws_instance" "this" {
  count         = var.cloud_provider == "aws" ? 1 : 0
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  subnet_id     = var.subnet_id_aws
  tags = {
    Name = "${var.environment}-instance"
  }
}

# Azure Resources
# 1. Public IP (Optional but often useful for testing)
resource "azurerm_public_ip" "this" {
  count               = var.cloud_provider == "azure" ? 1 : 0
  name                = "${var.environment}-pip"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group
  allocation_method   = "Dynamic"
}

# 2. Network Interface
resource "azurerm_network_interface" "this" {
  count               = var.cloud_provider == "azure" ? 1 : 0
  name                = "${var.environment}-nic"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.azure_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.this[0].id
  }
}

# 3. Virtual Machine
resource "azurerm_virtual_machine" "this" {
  count                 = var.cloud_provider == "azure" ? 1 : 0
  name                  = "${var.environment}-vm"
  location              = var.azure_location
  resource_group_name   = var.azure_resource_group
  network_interface_ids = [azurerm_network_interface.this[0].id]
  vm_size               = var.azure_vm_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  
  os_profile {
    computer_name  = "${var.environment}-vm"
    admin_username = "adminuser"
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

# Google Compute Instance
resource "google_compute_instance" "this" {
  count        = var.cloud_provider == "google" ? 1 : 0
  name         = "${var.environment}-instance"
  machine_type = var.gcp_machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = var.gcp_network_name
    # access_config {
      # Include this to give the VM an external ip address
    # }
  }
}