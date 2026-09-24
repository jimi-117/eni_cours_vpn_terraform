resource "azurerm_virtual_network_gateway_connection" "site_a" {
  name                = var.vpn_connection_name
  location            = data.azurerm_resource_group.lab2.location
  resource_group_name = data.azurerm_resource_group.lab2.name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.lab2.id
  local_network_gateway_id   = azurerm_local_network_gateway.site_a.id

  shared_key = var.vpn_shared_key
  tags       = local.common_tags
}
