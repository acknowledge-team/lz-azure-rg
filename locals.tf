locals {
  subscription_id = {
    "prod" : "5a33ffd3-57d1-4961-b32f-fbb5d240f72a",
    "dev" : "5a33ffd3-57d1-4961-b32f-fbb5d240f72a",
    "sandbox" : "5a33ffd3-57d1-4961-b32f-fbb5d240f72a"
  }

  tags = {
    "env" : var.env,
    "project" : var.project,
    "team" : var.team
  }

  networks = {
    for vnet in jsondecode(var.networks) : "vnet-${var.team}-${var.project}-${replace(vnet.vnet, "/", "-")}" => vnet
  }
}