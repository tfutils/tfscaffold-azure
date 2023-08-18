resource "azurerm_resource_group" "tfstate" {
  name     = "${var.project}-${var.region}-tfstate"
  location = var.region

  tags = {
    environment = var.environment
  }
}
