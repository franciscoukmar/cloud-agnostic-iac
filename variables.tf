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
