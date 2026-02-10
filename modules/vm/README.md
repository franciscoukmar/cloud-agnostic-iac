# Virtual Machine Module

This module creates a compute instance (VM) in the selected cloud provider (AWS, Azure, or GCP).

## Usage

```hcl
module "vm" {
  source = "./modules/vm"

  environment    = "dev"
  cloud_provider = "aws"
  admin_password = "SecurePassword123!"
  
  # AWS vars
  aws_ami           = "ami-..."
  aws_instance_type = "t2.micro"
  subnet_id_aws     = module.network.aws_subnet_id
}
```

## Variables

### General
- `cloud_provider`: The target cloud provider ("aws", "azure", "google").
- `environment`: The environment name (e.g., dev, prod).
- `admin_password`: Administrator password for the VM (sensitive).

### AWS
- `aws_ami`: AMI ID for the EC2 instance.
- `aws_instance_type`: Instance type (e.g., t2.micro).
- `subnet_id_aws`: VPC Subnet ID.

### Azure
- `azure_location`: Azure location.
- `azure_resource_group`: Resource Group name.
- `azure_vm_size`: VM Size (e.g., Standard_B1s).
- `azure_subnet_id`: VNet Subnet ID.

### Google Cloud
- `gcp_machine_type`: Machine type (e.g., f1-micro).
- `gcp_zone`: GCP Zone (e.g., us-central1-a).
- `gcp_network_name`: Network name to attach to.
