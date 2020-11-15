#---------------------------#
# Azure tenant informations #
#---------------------------#

variable "tenant_id" {
  description = "Azure tenant id"
  type        = string
  default     = "f9056c40-d204-4118-b01d-bb624708154c"
}

#----------------------#
# Project informations #
#----------------------#

variable "env" {
  description = "Environment name. Should be prod, dev or sandbox. Default to sandbox"
  type        = string
  default     = "sandbox"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "myapp"
}

variable "team" {
  description = "Feature team name"
  type        = string
  default     = "team1"
}

#-------------------------#
# Networking informations #
#-------------------------#

variable networks {
  description = "A map containing virtual networks and associated subnets to create"
  type = map(any)
  default = {
    "vnet-1" : {
      "address_space" : ["10.1.1.0/24"],
      "subnets" : [
        { "name" : "external", "address_prefix" : "10.1.1.0/28" },
        { "name" : "internal", "address_prefix" : "10.1.1.16/28" }
      ]
    }
  }
}