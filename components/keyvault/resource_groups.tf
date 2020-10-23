# Create root level resources here...
resource "azurerm_resource_group" "keyvault" {
  name     = "${var.project}-keyvault-${var.environment}"
  location = var.region

  tags = {
    environment = var.environment
  }
}