provider "azurerm" {
  version = "=2.36.0"
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = local.subscription_id[var.env]
}