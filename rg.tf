resource "azurerm_resource_group" "vnet_rg" {
  name     = var.resourcegroup_name
  location = var.location
  tags     = var.tags
}