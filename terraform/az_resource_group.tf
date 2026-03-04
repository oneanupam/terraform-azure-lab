# Resource block to deploy Resource Group in BLD Subscription
resource "azurerm_resource_group" "bld_rg" {
  name     = var.rg_name
  location = var.location
}

# Resource block to deploy Resource Group in PRD Subscription
resource "azurerm_resource_group" "prd_rg" {
  provider = azurerm.prd
  name     = "oneanupam-prd-rg-20"
  location = var.location
}
