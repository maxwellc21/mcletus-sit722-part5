resource "azurerm_container_registry" "libraryreg" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false  # Disable admin access for security
}
