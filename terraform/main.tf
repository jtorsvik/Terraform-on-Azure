resource "azurerm_resource_group" "firstrg" {
  name     = "temp-rg"
  location = "Norway East"
}

resource "azurerm_storage_account" "firstsa" {
  name                     = "jmttempsa"
  resource_group_name      = azurerm_resource_group.firstrg.name
  location                 = var.location
  account_tier             = "Premium"
  account_replication_type = "LRS"
  account_kind             = "BlockBlobStorage"
  is_hns_enabled           = true
}