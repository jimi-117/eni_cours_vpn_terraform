resource "azurerm_local_network_gateway" "site_a" {
  name                = var.local_network_gateway_name
  resource_group_name = data.azurerm_resource_group.lab2.name
  location            = data.azurerm_resource_group.lab2.location

  gateway_address = var.onprem_gateway_address
  address_space   = var.onprem_address_space

  tags = local.common_tags
}
