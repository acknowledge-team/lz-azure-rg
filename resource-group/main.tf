resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.team}-${var.project}-${var.env}"
  location = var.location
  tags     = var.tags
}