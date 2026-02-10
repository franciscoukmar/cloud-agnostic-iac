variable "aws_region" {
  description = "AWS-REGION"
  type        = string
  default     = "us-west-1"
}

variable "google_project" {
  description = "GOOGLE CLOUD ID"
  type        = string
}

variable "google_region" {
  description = "GOOGLE CLOUD REGION"
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "ENV (example: dev, prod)"
  type        = string
  default     = "dev"
}

variable "cloud_provider" {
  description = "Cloud Provider to deploy to (aws, azure, google)"
  type        = string
  validation {
    condition     = contains(["aws", "azure", "google"], var.cloud_provider)
    error_message = "Valid values for cloud_provider are: aws, azure, google."
  }
}

variable "admin_password" {
  description = "Admin password for VMs (sensitive)"
  type        = string
  sensitive   = true
}

# --- Cloud Specific Variables ---
# AWS
variable "aws_ami" {
  description = "AWS AMI ID"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "aws_instance_type" {
  description = "AWS Instance Type"
  type        = string
  default     = "t2.micro"
}

# Azure
variable "azure_resource_group" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "my-resource-group"
}

variable "azure_location" {
  description = "Azure Location"
  type        = string
  default     = "East US"
}

variable "azure_vm_size" {
  description = "Azure VM Size"
  type        = string
  default     = "Standard_B1s"
}

# Google
variable "gcp_machine_type" {
  description = "GCP Machine Type"
  type        = string
  default     = "f1-micro"
}

variable "gcp_zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}
