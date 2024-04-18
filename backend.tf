terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.00"
    }
  }
  backend "azurerm" {
    resource_group_name = "adoLZstate"
    storage_account_name = "bkstrg"
    container_name = "bkcontainer"
    key = "state"
  }
}





