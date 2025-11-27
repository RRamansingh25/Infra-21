terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "backend-raman"
    storage_account_name = "stgraman"
    container_name = "con-raman"
    key = "dev.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "fb5e915e-0e84-4a29-a7ae-6dcd3af7c85d"
}