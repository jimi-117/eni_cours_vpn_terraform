resource "azurerm_network_interface" "server_b" {
  name                = var.server_b_nic_name
  location            = data.azurerm_resource_group.lab2.location
  resource_group_name = data.azurerm_resource_group.lab2.name

  ip_configuration {
    name                          = "ipconfig-server-b"
    subnet_id                     = azurerm_subnet.lan_b.id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.server_b_private_ip
  }

  tags = local.common_tags
}
