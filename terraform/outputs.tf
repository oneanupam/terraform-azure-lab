output "bld_rg_id" {
  value       = azurerm_resource_group.bld_rg.id
  description = "the id of the created resource group"
}

output "bld_vnet_id" {
  value       = azurerm_virtual_network.bld_vnet.id
  description = "the id of the created virtual network"
}

output "bld_snet_details" {
  value       = azurerm_subnet.bld_snet
  description = "the output of the created subnets"
}

output "bld_snet_ids" {
  description = "the id of the created subnets"
  value = [
    for key, value in azurerm_subnet.bld_snet :
    value.id
  ]
}
