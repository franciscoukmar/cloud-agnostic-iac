module "network" {
  source = "./modules/network"

  providers = {
    aws     = aws
    azurerm = azurerm
    google  = google
  }

  environment = var.environment
}

module "vm" {
  source = "./modules/vm"

  providers = {
    aws     = aws
    azurerm = azurerm
    google  = google
  }

  environment = var.environment
}
