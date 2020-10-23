# tfstate
resource "azurerm_storage_container" "tfstate" {
  depends_on = [azurerm_storage_account.tfstate]
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# builds
resource "azurerm_storage_container" "builds" {
  depends_on = [azurerm_storage_account.tfstate]
  name                  = "builds"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}