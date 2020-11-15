resource "azurerm_virtual_network" "virtual_network" {
  name                = "vnet-${var.team}-${var.project}-${var.env}"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = [var.address_space]

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value["name"]
      address_prefix = subnet.value["address_prefix"]
    }
  }

  tags = var.tags
}