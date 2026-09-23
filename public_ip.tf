resource "azurerm_public_ip" "vpn_gateway" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.lab2.name
  location            = data.azurerm_resource_group.lab2.location

  allocation_method = "Static"
  sku               = "Standard"
  ip_version        = "IPv4"
  zones             = ["1", "2", "3"]
  tags              = local.common_tags
}
