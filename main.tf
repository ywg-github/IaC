terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.44.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}