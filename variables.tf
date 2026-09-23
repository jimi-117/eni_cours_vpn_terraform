
variable "location" {
  description = "Azure region"
  type        = string
  default     = "France Central"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-smiyagi2025_cours-multicloud"
}

variable "vnet_name" {
  description = "Azure VNet name"
  type        = string
  default     = "vnet-lab2-frc-001"
}

variable "vnet_address_space" {
  description = "Azure VNet address space"
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "lan_b_subnet_name" {
  description = "LAN-B subnet name"
  type        = string
  default     = "snet-lab2-lanb-001"
}

variable "lan_b_subnet_prefix" {
  description = "LAN-B subnet prefix"
  type        = list(string)
  default     = ["10.20.20.0/24"]
}

variable "gateway_subnet_prefix" {
  description = "VPN Gateway subnet prefix"
  type        = list(string)
  default     = ["10.20.255.0/27"]
}

variable "public_ip_name" {
  description = "VPN Gateway public IP name"
  type        = string
  default     = "pip-vpngw-lab2-frc-001"
}

variable "vpn_gateway_name" {
  description = "VPN Gateway name"
  type        = string
  default     = "vgw-lab2-frc-001"
}
