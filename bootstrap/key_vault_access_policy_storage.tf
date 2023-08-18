resource "azurerm_key_vault_access_policy" "storage" {
  key_vault_id = azurerm_key_vault.tfstate.id
  tenant_id    = var.tenant
  object_id    = azurerm_storage_account.tfstate.identity[0].principal_id

  key_permissions    = [
    "Get",
    "Create",
    "List",
    "Restore",
    "Recover",
    "UnwrapKey",
    "WrapKey",
    "Purge",
    "Encrypt",
    "Decrypt",
    "Sign",
    "Verify"
  ]

  secret_permissions = [ "Get" ]
}
