locals {
  networks = {
    for vnet in var.networks : "vnet-${var.team}-${var.project}-${var.env}" => vnet
  }
}