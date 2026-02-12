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
}


# Create a resource group
resource "azurerm_resource_group" "example-4" {
  name     = "example-resources-ter-Demo"
  location = "East US"
}
