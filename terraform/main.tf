# Resource group
resource "azurerm_resource_group" "firstrg" {
  name     = "temp-rg"
  location = "Norway East"
}

# Storage Account
resource "azurerm_storage_account" "firstsa" {
  name                     = "jmttempsa"
  resource_group_name      = azurerm_resource_group.firstrg.name
  location                 = var.location
  account_tier             = "Premium"
  account_replication_type = "LRS"
  account_kind             = "BlockBlobStorage"
  is_hns_enabled           = true
}

# Containter(s)
resource "azurerm_storage_container" "data" {
  name                 = "data"
  storage_account_name = azurerm_storage_account.firstsa.name
}

module "naming" {
  source  = "Azure/naming/azurerm"
  prefix  = [var.project]
  suffix  = [var.location] # Need to change to local-variable
}