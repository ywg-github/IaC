terraform {
  backend "azurerm" {
    resource_group_name  = "ywg-app-k8s-rg-dev"
    storage_account_name = "appprodterraformstate"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}