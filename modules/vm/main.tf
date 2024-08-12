# AWS EC2 Instance
resource "aws_instance" "this" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  tags = {
    Name = "${var.environment}-instance"
  }
}

# Azure Virtual Machine
resource "azurerm_virtual_machine" "this" {
  name                  = "${var.environment}-vm"
  location              = var.azure_location
  resource_group_name   = var.azure_resource_group
  network_interface_ids = [azurerm_network_interface.this.id]
  vm_size               = var.azure_vm_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  
  os_profile {
    computer_name  = "${var.environment}-vm"
    admin_username = "adminuser"
    admin_password = "P@ssw0rd123!"
  }
}

# Google Compute Instance
resource "google_compute_instance" "this" {
  name         = "${var.environment}-instance"
  machine_type = var.gcp_machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.this.name
  }
}
