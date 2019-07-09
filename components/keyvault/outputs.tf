output "vm_linux_admin_password" {
    value = "${module.vm_linux_admin_password.secret_value}"
}

output "vm_windows_admin_password" {
    value = "${module.vm_windows_admin_password.secret_value}"
}

output "vm_ldap_admin_password" {
    value = "${module.vm_ldap_admin_password.secret_value}"
}

output "vm_jumpbox_admin_password" {
    value = "${module.vm_jumpbox_admin_password.secret_value}"
}

output "ldap_config_password" {
    value = "${module.ldap_config_password.secret_value}"
}

output "ldap_admin_password" {
    value = "${module.ldap_admin_password.secret_value}"
}

output "postgres_password" {
    value = "${module.postgres_password.secret_value}"
}

output "guacadmin_password" {
    value = "${module.guacadmin_password.secret_value}"
}

output "ssl_password" {
    value = "${azurerm_key_vault_secret.ssl_password.value}"
}