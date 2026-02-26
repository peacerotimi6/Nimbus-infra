terraform {
  backend "azurerm" {
  resource_group_name   = "Nimbus-rg"
  storage_account_name  = "nimbussazm60d4js"
  container_name        = "tfstate"
  key                   = "terraform.tfstate"

}
}    