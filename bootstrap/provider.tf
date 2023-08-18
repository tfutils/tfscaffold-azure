provider "azurerm" {
  features {
    resource_group {
      # Setting this to true as that will become the default in v3, so if we set it
      # now, it should make upgrading easier down the line
      # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#prevent_deletion_if_contains_resources
      prevent_deletion_if_contains_resources = true
    }
  }
}
