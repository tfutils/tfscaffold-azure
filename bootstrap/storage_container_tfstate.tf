# tfstate
resource "azurerm_storage_container" "tfstate" {
  depends_on = [ azurerm_storage_account.tfstate ]

  name                  = "${var.project}-${var.region}-tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
