resource "azurerm_subnet" "Kubernetes_subnet" {
  name                 = "ywg-${(var.project_name)}-k8s-dev-1"
  address_prefixes     = ["10.93.22.0/23"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.ywg_k8s_vnet_dev.name
  service_endpoints    = ["Microsoft.AzureCosmosDB", "Microsoft.Sql", "Microsoft.KeyVault"]
}

resource "azurerm_subnet" "Vmss_devops_agent_subnet" {
  name                 = "ywg-${(var.project_name)}-int-dev-1"
  address_prefixes     = ["10.93.24.64/28"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.ywg_k8s_vnet_dev.name
  service_endpoints    = ["Microsoft.AzureCosmosDB", "Microsoft.Sql", "Microsoft.KeyVault"]

}