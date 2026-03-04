# Terraform block to configure Terraform and Provider Version
terraform {
  required_version = "~> 1.14.0" # To allow upgrade of 1.14.x versions.

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.62.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
}
