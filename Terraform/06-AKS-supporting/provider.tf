terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3"
    }
    random = {
      version = ">=3.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "tfbackback"   # Partial configuration, provided during "terraform init"
    storage_account_name = "infraascodetfstate"   # Partial configuration, provided during "terraform init"
    container_name       = "tfstate"   # Partial configuration, provided during "terraform init"
    key                  = "aks-support"
  }
}

provider "azurerm" {
  features {}
}