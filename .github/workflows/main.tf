terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
}

terraform { 
  cloud { 
    
    organization = "myvcpDemo" 

    workspaces { 
      name = "API-githubTerracloud" 
    } 
  } 
}


provider "azurerm" {
  features {}
  subscription_id = "a1dd8b07-d327-418f-be55-3be8870b35aa"
}


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources-ter-1"
  location = "East US"
}
