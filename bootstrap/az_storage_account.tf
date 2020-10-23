resource "azurerm_storage_account" "tfstate" {
  depends_on = [azurerm_resource_group.tfstate]
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}