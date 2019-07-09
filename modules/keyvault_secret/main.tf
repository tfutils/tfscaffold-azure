resource "random_string" "password" {
  length = 34
  special = false
}

resource "azurerm_key_vault_secret" "secret" {
  name     = "${var.secret_name}"
  value    = "${random_string.password.result}"
  key_vault_id = "${var.key_vault_id}"

  tags = {
    environment = "${var.environment}"
  }
}