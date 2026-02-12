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
resource "azurerm_resource_group" "example-6" {
  name     = "example-resources-ter-Demo-6"
  location = "East US"
}
