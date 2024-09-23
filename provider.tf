terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 4.0.1"
    }
    
  }
    backend "azurerm" {
    resource_group_name  = "Test-RG"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "st0099"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfsec"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
 features{}
 subscription_id = "36a7daa3-9fd1-4077-8dfd-f83ca8c6cc4e"
}