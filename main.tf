terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0fd3fe62-0cf1-48a1-9244-91112d1f69fe"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "./setup_jenkins_azure.sh
"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
