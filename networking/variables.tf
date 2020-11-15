variable "address_space" {
  description = "The address space of the virtual network you want to create"
  type        = string
}

variable "subnets" {
  description = "A list containing maps with the subnets to create and associated names"
  type        = list(map(string))
}

variable "location" {
  description = "Resource group location"
  type        = string
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
}

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

variable "tags" {
  description = "A map containing all tags to applied to the resource group created"
  type        = map(string)
}