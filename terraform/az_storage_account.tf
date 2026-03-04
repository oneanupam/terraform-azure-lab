# Resource block to deploy Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.bld_rg.name
  location                 = azurerm_resource_group.bld_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
