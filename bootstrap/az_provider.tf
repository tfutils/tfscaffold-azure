# The default Azure provider in the default region
provider "azurerm" {
  version = "=2.33.0"
  features {}
}

provider "local" {
  version = "=1.2.2"
}

provider "template" {
  version = "=2.1.2"
}