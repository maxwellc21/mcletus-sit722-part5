resource "azurerm_kubernetes_cluster" "libraryproj" {
  name                = var.aks_name
  location            = azurerm_resource_group.libraryproj.location
  resource_group_name = azurerm_resource_group.libraryproj.name
  dns_prefix          = var.aks_name

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }

  depends_on = [
    azurerm_resource_group.libraryproj
  ]
}
