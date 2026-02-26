terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
   subscription_id = "cf82cf7f-de3b-43c0-ae6f-31b3cafee3a4"
}