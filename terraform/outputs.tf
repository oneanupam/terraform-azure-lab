output "rg_id" {
  value       = azurerm_resource_group.rg.id
  description = "the id of the created resource group"
}

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "the id of the created virtual network"
}

output "snet_details" {
  value       = azurerm_subnet.snet
  description = "the output of the created subnets"
}

output "snet_ids" {
  description = "the id of the created subnets"
  value = [
    for key, value in azurerm_subnet.snet :
    value.id
  ]
}
