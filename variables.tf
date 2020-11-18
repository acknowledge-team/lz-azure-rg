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
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "team" {
  description = "Feature team name"
  type        = string
}

#-------------------------#
# Networking informations #
#-------------------------#

variable networks {
  description = "A string containing a json with virtual networks and associated subnets to create within the resource group"
  type = string
}