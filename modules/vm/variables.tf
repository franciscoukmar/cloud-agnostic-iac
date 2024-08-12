variable "environment" {
  description = "El entorno donde se desplegará la máquina virtual (ej. dev, prod)."
  type        = string
}

variable "aws_ami" {
  description = "La AMI de AWS para la instancia EC2."
  type        = string
}

variable "aws_instance_type" {
  description = "El tipo de instancia de AWS (ej. t2.micro)."
  type        = string
  default     = "t2.micro"
}

variable "azure_location" {
  description = "La ubicación en Azure donde se desplegará la máquina virtual."
  type        = string
  default     = "East US"
}

variable "azure_resource_group" {
  description = "El nombre del grupo de recursos de Azure."
  type        = string
}

variable "azure_vm_size" {
  description = "El tamaño de la máquina virtual en Azure (ej. Standard_B1s)."
  type        = string
  default     = "Standard_B1s"
}

variable "gcp_machine_type" {
  description = "El tipo de máquina en Google Cloud (ej. f1-micro)."
  type        = string
  default     = "f1-micro"
}

variable "gcp_zone" {
  description = "La zona en Google Cloud donde se desplegará la máquina."
  type        = string
  default     = "us-central1-a"
}
