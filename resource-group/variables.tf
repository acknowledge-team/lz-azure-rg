variable "location" {
  description = "Azure region"
  type        = string
  default     = "France Central"
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

variable tags {
  description = "A map containing all tags to applied to the resource group created"
  type        = map(string)
}