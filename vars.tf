variable "project_name" {
  default = "APP"
}
variable "location" {
  default     = "EAST US 2"
  description = "Region where all resources will be deployed..."
}
variable "vnet_name" {
  default     = "ywg-app-vnet-dev"
  description = "Production virtual network name..."
}
variable "resource_group_name" {
  default     = "ywg-app-k8s-rg-dev"
  description = "Production kubernetes cluster resource group..."
}
variable "route_table_name" {
  default = "ywg-route-app-dev"
}

locals {
  environment = terraform.workspace
  tags = {
    Application = var.project_name
    Environment = local.environment
  }
}