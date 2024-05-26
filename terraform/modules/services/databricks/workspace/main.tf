resource "azurerm_databricks_workspace" "adb_premium" {
  name                = "databricks-community"
  resource_group_name = azurerm_resource_group.firstrg.name
  location            = azurerm_resource_group.firstrg.location
  sku                 = "premium"

  tags = {
    Environment = "Production"
  }
}