resource "azurerm_virtual_network" "lab2" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.lab2.name
  location            = data.azurerm_resource_group.lab2.location
  address_space       = var.vnet_address_space
  tags                = local.common_tags
}

resource "azurerm_subnet" "lan_b" {
  name                 = var.lan_b_subnet_name
  resource_group_name  = data.azurerm_resource_group.lab2.name
  virtual_network_name = azurerm_virtual_network.lab2.name
  address_prefixes     = var.lan_b_subnet_prefix
}

resource "azurerm_subnet" "gateway" {
  name                 = "GatewaySubnet"
  resource_group_name  = data.azurerm_resource_group.lab2.name
  virtual_network_name = azurerm_virtual_network.lab2.name
  address_prefixes     = var.gateway_subnet_prefix
}
