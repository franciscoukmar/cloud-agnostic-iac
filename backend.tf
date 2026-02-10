# --- Remote State Configuration (Templates) ---
# Uncomment the block for your chosen cloud provider.

# 1. AWS S3 Backend
# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

# 2. Azure Blob Storage Backend
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "my-tf-state-rg"
#     storage_account_name = "mytfstatestorage"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#   }
# }

# 3. Google Cloud Storage Backend
# terraform {
#   backend "gcs" {
#     bucket  = "my-tf-state-bucket"
#     prefix  = "terraform/state"
#   }
# }
