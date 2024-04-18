resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.vnet_rg.location
  resource_group_name = azurerm_resource_group.vnet_rg.name
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets
  resource_group_name  = var.resourcegroup_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefixes"]
}