resource "azurerm_linux_virtual_machine" "server_b" {
  name                = "vm-lab2-serverb-001"
  resource_group_name = data.azurerm_resource_group.lab2.name
  location            = data.azurerm_resource_group.lab2.location
  size                = var.server_b_vm_size

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.server_b.id
  ]

  disable_password_authentication = true

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_ed25519.pub")
  }

  source_image_reference {
    publisher = "Debian"
    offer     = "debian-13"
    sku       = "13-gen2"
    version   = "latest"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = local.common_tags
}



























