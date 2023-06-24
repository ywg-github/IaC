variable "project_name" {
  default = "APP"
}
variable "location" {
  default     = "EAST US 2"
  description = "Region where all resources will be deployed..."
}
variable "vnet_name" {
  default     = "emp-app-vnet"
  description = "Production virtual network name..."
}
variable "resource_group_name" {
  default     = "emp-app-k8s-rg"
  description = "Production kubernetes cluster resource group..."
}
variable "route_table_name" {
  default = "em-route-app-prod"
}

locals {
  environment = terraform.workspace
  tags = {
    Application = var.project_name
    Environment = local.environment
  }
}