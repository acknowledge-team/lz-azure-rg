resource "azurerm_virtual_network" "virtual_network" {
  for_each            = toset(jsondecode(var.networks))
  name                = "vnet-${var.team}-${var.project}-${replace(each.value.vnet, "/", "-")}"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = each.value.vnet

  dynamic "subnet" {
    for_each = toset(each.value.subnets)
    content {
      name = "subnet-${var.team}-${var.project}-${replace(subnet.value, "/", "-")}"
      address_prefix = subnet.value
    }
  }

  tags = var.tags
}