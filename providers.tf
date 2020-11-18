provider "azurerm" {
  version = "=2.36.0"
  features {}

  tenant_id       = var.tenant_id
  subscription_id = local.subscription_id[var.env]
}