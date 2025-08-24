terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {

  features {}

  subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg_aditya"
    storage_account_name = "sgaditya"
    container_name       = "statefile"
    key                  = "terraform.tfstate"
  }
}