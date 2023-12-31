resource "azurerm_virtual_network" "ywg_k8s_vnet_dev" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["10.93.22.0/23", "10.93.24.0/23", "10.93.26.0/23"]
  tags = {
    project     = "Applications"
    environment = "dev"
    resource    = "Dev virtual network for k8 cluster configuration"
  }

}