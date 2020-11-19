resource "random_uuid" "uuid" {
  for_each = local.networks
}

resource "azurerm_virtual_network" "virtual_network" {
  for_each            = local.networks
  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = each.value.vnet

  dynamic "subnet" {
    for_each = toset(each.value.subnets)
    content {
      name = "subnet-${var.team}-${var.project}-${replace(subnet.value, "/", "-")}-${random_uuid.uuid[each.key].id}"
      address_prefix = subnet.value
    }
  }

  tags = var.tags
}