variable "location" {
  description = "Azure location for the resources"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "acr_name" {
  description = "Azure Container Registry name"
}

variable "aks_name" {
  description = "Azure Kubernetes Cluster name"
}

variable "subscription_id" {
  description = "Azure subscription ID"
}
