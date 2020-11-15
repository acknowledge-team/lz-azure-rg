variable "networks" {
  description = "A list containing maps with the virtual networks and subnets to create"
  type = map(any)
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