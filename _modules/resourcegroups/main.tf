terraform {
    required_version = ">= 1.7.0"

required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = ">= 3.7.0, < 5.0.0"
    }
  }
}

provider "azurerm" {
  alias = "infra-provider"
  #client_id = "xxxxx"
  #client_secret = "xxxxx"
  tenant_id = "xxxxx"
  subscription_id = "xxxxx"
  features {}  
}

module "avm-res-resources-resourcegroup" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.2.1"
  location = "West Europe"
  name = ""
}