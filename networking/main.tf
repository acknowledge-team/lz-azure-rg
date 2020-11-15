resource "azurerm_virtual_network" "virtual_network" {
  for_each            = var.networks
  name                = "vnet-${var.team}-${var.project}-${each.key}"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name           = subnet.value["name"]
      address_prefix = subnet.value["address_prefix"]
    }
  }

  tags = var.tags
}