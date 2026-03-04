# Resource block to deploy Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_details["name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_details["address_space"]
}

resource "azurerm_subnet" "snet" {
  for_each             = var.snet_details
  name                 = each.value["name"]
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value["address_space"]
}
