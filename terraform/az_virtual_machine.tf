resource "azurerm_network_interface" "nic" {
  for_each = var.windows_vm_details

  name                = "${each.key}-nic"
  location            = azurerm_resource_group.bld_rg.location
  resource_group_name = azurerm_resource_group.bld_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.bld_snet["snet-01"].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  for_each            = var.windows_vm_details
  name                = each.key
  resource_group_name = azurerm_resource_group.bld_rg.name
  location            = azurerm_resource_group.bld_rg.location
  size                = each.value["size"]
  admin_username      = each.value["admin_username"]
  admin_password      = azurerm_key_vault_secret.kv_secret.value
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
