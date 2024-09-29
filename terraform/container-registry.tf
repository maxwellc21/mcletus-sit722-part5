resource "azurerm_container_registry" "libraryreg" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.libraryproj.name
  location            = azurerm_resource_group.libraryproj.location
  sku                 = "Basic"
  admin_enabled       = false  # Disable admin access for security
}
