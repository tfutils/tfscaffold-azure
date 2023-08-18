resource "azurerm_key_vault_key" "tfstate" {
  name         = "${var.project}-${var.region}-tfstate-key"
  key_vault_id = azurerm_key_vault.tfstate.id
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

  depends_on = [
    azurerm_key_vault_access_policy.client,
    azurerm_key_vault_access_policy.storage,
  ]
}
