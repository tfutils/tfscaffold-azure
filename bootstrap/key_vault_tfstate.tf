resource "azurerm_key_vault" "tfstate" {
  name                = "${var.project}-${var.region}-tfstate"
  location            = azurerm_resource_group.tfstate.location
  resource_group_name = azurerm_resource_group.tfstate.name
  tenant_id           = var.tenant
  sku_name            = "standard"

  purge_protection_enabled = true
}
