resource "azurerm_key_vault" "keyvault" {
  name                        = "${var.project}-kv-${var.environment}"
  location                    = "${azurerm_resource_group.keyvault.location}"
  resource_group_name         = "${azurerm_resource_group.keyvault.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = "${var.tenant}"

  sku {
    name = "standard"
  }

  access_policy {
    tenant_id = "${var.tenant}"
    object_id = "${var.service_principal_object_id}"

    key_permissions = [
      "backup",
      "create",
      "decrypt",
      "delete",
      "encrypt",
      "get",
      "import",
      "list",
      "purge",
      "recover",
      "restore",
      "sign",
      "unwrapKey",
      "update",
      "verify",
      "wrapKey"
    ]

    secret_permissions = [
      "backup",
      "delete",
      "get",
      "list",
      "purge",
      "recover",
      "restore",
      "set"
    ]

    storage_permissions = [
      "backup",
      "delete",
      "deletesas",
      "get",
      "getsas",
      "list",
      "listsas",
      "purge",
      "recover",
      "regeneratekey",
      "restore",
      "set",
      "setsas",
      "update"
    ]
  }

  tags = {
    environment = "${var.environment}"
  }
}