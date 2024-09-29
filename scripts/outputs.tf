output "registry_name" {
  value = azurerm_container_registry.libraryreg.name
}

output "resource_group_name" {
  value = azurerm_resource_group.libraryproj.name
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.libraryproj.name
}
