variable "location" {
  description = "Azure location for the resources"
  default     = "Australia Southeast"  # You can also remove the default if you'd like to pass it dynamically
}

variable "resource_group_name" {
  description = "libraryproj"
}

variable "acr_name" {
  description = "libraryreg9324"
}

variable "aks_name" {
  description = "libraryproj"
}

variable "subscription_id" {
  description = "92f7c0f2-820b-4c2b-b15c-133bb77ef867"
}
