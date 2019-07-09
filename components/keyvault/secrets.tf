module "vm_linux_admin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "vm-linux-admin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "vm_windows_admin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "vm-windows-admin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "vm_ldap_admin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "vm-ldap-admin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "vm_jumpbox_admin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "vm-jumpbox-admin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "ldap_config_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "ldap-config-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "ldap_admin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "ldap-admin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "postgres_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "postgres-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

module "guacadmin_password" {
  source = "../../modules/keyvault_secret"

  environment = "${var.environment}"
  secret_name = "guacadmin-password"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"
}

# Note this is not using the module as you need to specify the password somewhere.
# DON'T specify the password here and check the damn thing in - read the readme.
resource "azurerm_key_vault_secret" "ssl_password" {
  name     = "ssl-password"
  value    = "${var.passwordy_mcssl_passwordface}"
  key_vault_id = "${azurerm_key_vault.keyvault.id}"

  tags = {
    environment = "${var.environment}"
  }
}