locals {
  networks = {
    for vnet in jsondecode(var.networks) : "vnet-${var.team}-${var.project}-${var.env}-${vnet.id}" => vnet
  }
}