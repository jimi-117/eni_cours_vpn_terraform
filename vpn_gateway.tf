resource "azurerm_virtual_network_gateway" "lab2" {
  name                = var.vpn_gateway_name
  location            = data.azurerm_resource_group.lab2.location
  resource_group_name = data.azurerm_resource_group.lab2.name

  type     = "Vpn"
  vpn_type = "RouteBased"
  sku      = "Basic"

  generation    = "Generation1"
  active_active = false

  ip_configuration {
    name                          = "vpngw-ipconfig-001"
    public_ip_address_id          = azurerm_public_ip.vpn_gateway.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gateway.id
  }

  tags = local.common_tags
}
