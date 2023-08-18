terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.70.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }

  required_version = ">= 1.0.10"
}
