# Resource block to deploy Virtual Network
resource "azurerm_virtual_network" "bld_vnet" {
  name                = var.vnet_details["name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bld_rg.name
  address_space       = var.vnet_details["address_space"]
}

resource "azurerm_subnet" "bld_snet" {
  for_each             = var.snet_details
  name                 = each.value["name"]
  resource_group_name  = azurerm_resource_group.bld_rg.name
  virtual_network_name = azurerm_virtual_network.bld_vnet.name
  address_prefixes     = each.value["address_space"]
}
