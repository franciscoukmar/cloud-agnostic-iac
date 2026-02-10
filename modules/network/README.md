# Network Module

This module explicitly creates network resources for a selected cloud provider (AWS, Azure, or GCP).

## Usage

```hcl
module "network" {
  source = "./modules/network"

  environment          = "dev"
  cloud_provider       = "aws" # "azure", "google"
  azure_location       = "East US"
  azure_resource_group = "my-rg"
}
```

## Variables

- `environment`: The environment name (e.g., dev, prod).
- `cloud_provider`: The target cloud provider ("aws", "azure", "google").
- `azure_location`: Azure location (required if provider is azure).
- `azure_resource_group`: Azure Resource Group name (required if provider is azure).

## Outputs

Outputs are conditional based on the selected provider. if a provider is not selected, its outputs will be empty strings.

- `aws_vpc_id`: The ID of the AWS VPC.
- `aws_subnet_id`: The ID of the AWS Subnet.
- `azure_vnet_name`: The name of the Azure Virtual Network.
- `azure_subnet_id`: The ID of the Azure Subnet.
- `gcp_network_name`: The name of the Google Compute Network.
