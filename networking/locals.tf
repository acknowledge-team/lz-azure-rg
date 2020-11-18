locals {
  networks = {
    for vnet in jsondecode(var.networks) : "vnet-${var.team}-${var.project}-${replace(vnet.vnet, "/", "-")}" => vnet
  }
}