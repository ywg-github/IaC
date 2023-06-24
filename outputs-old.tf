output "current_subscription_display_name" {
  value = data.azurerm_subscription.current.display_name
}
output "resource_group_name" {
  value = var.resource_group_name
}
output "vnet_name" {
  value = azurerm_virtual_network.prod_k8s_vnet.name
}
output "k8s_subnetId" {
  value = azurerm_subnet.Kubernetes_subnet.id
}
output "vmss_devops_agent_subnetId" {
  value = azurerm_subnet.Vmss_devops_agent_subnet.id
}
output "k8s_subnet_service_endpoints" {
  value = azurerm_subnet.Kubernetes_subnet.service_endpoints
}
output "vmss_devops_agent_subnet_service_endpoints" {
  value = azurerm_subnet.Vmss_devops_agent_subnet.service_endpoints
}
output "route_tables_list" {
  value = azurerm_route_table.route_table
}