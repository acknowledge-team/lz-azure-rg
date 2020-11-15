locals {
  subscription_id = {
    "prod" : "5678",
    "dev" : "1234",
    "sandbox" : "5a33ffd3-57d1-4961-b32f-fbb5d240f72a"
  }

  tags = {
    "env" : var.env,
    "project" : var.project,
    "team" : var.team
  }
}