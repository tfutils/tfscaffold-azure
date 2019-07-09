output "secret_value" {
  value = "${azurerm_key_vault_secret.secret.value}"
}