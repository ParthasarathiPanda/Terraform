resource "azurerm_resource_group" "RG2" {
  name     = var.RGName
  location = var.RGLocation
}

resource "azurerm_network_security_group" "NSG1" {
  name                = var.NSGName
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
}

resource "azurerm_virtual_network" "VNET1" {
  name                = var.VNETName
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
  address_space       = var.Vnet-address_space
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = var.subnetName
    address_prefix = var.subnetAddress
  }

  tags = {
    environment = "Production"
  }
}