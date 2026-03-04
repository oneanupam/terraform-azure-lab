# Configure Terraform Backend for Azure Provider

terraform {
  backend "azurerm" {
    resource_group_name  = "oneanupam-rg-bld-eastus-01"
    storage_account_name = "oneanupambldsa01"
    container_name       = "tfstates"
    key                  = "bld.terraform.tfstate"
  }
}
