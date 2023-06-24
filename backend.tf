terraform {
  backend "azurerm" {
    resource_group_name  = "EMA-DevOps-Internal"
    storage_account_name = "appprodterraformstate"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}