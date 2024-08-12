variable "environment" {
  description = "El entorno donde se desplegará la red (ej. dev, prod)."
  type        = string
}

variable "azure_location" {
  description = "La ubicación en Azure donde se desplegará la red."
  type        = string
  default     = "East US"
}

variable "azure_resource_group" {
  description = "El nombre del grupo de recursos de Azure."
  type        = string
}
