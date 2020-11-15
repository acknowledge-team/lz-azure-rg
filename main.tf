module "az_ad_groups" {
  source = "./az-ad-groups"

  project = var.project
  team    = var.team
}

module "resource_group" {
  source = "./resource-group"

  project = var.project
  team    = var.team
  env     = var.env
  tags    = local.tags
}

module "networking" {
  source = "./networking"

  project        = var.project
  team           = var.team
  env            = var.env
  tags           = local.tags
  address_space  = var.address_space
  subnets        = var.subnets
  resource_group = module.resource_group.name
  location       = module.resource_group.location
}