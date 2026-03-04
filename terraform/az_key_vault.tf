# Data block to fetch tenant id of the current subscription
data "azurerm_client_config" "current" {
}

# Output block to display tenant id in the output
output "tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}

# Resource block to create key vault and store secrets in it
resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = azurerm_resource_group.bld_rg.location
  resource_group_name         = azurerm_resource_group.bld_rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"
  rbac_authorization_enabled  = true
}

# Resource block to create random password for VM admin and store it as secret in key vault
resource "azurerm_key_vault_secret" "kv_secret" {
  name         = "vm-admin-password"
  value        = random_password.password.result
  key_vault_id = azurerm_key_vault.kv.id
}
