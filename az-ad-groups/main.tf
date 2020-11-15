resource "azuread_group" "rg_admin" {
  name    = "grp-${var.team}-${var.project}-admin"
  members = []
}

resource "azuread_group" "rg_reader" {
  name    = "grp-${var.team}-${var.project}-reader"
  members = []
}