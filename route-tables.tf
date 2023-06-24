resource "azurerm_route_table" "route_table" {
  name                          = var.route_table_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = false

  route {
    name                   = "Internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.90.2.6"
  }

  route {
    name                   = "To-Prod"
    address_prefix         = "10.90.0.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.90.2.6"
  }

  route {
    name                   = "To-Prod2"
    address_prefix         = "10.90.32.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.90.2.6"
  }

  route {
    name                   = "To-93Space"
    address_prefix         = "10.93.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.90.2.6"
  }

  route {
    name                   = "EM-APP-INT-PROD"
    address_prefix         = "10.93.24.0/28"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.90.2.6"
  }

  tags = {
    environment = "Prod"
  }

}

resource "azurerm_subnet_route_table_association" "k8s_subnet_route_table" {
  subnet_id      = azurerm_subnet.Kubernetes_subnet.id
  route_table_id = azurerm_route_table.route_table.id

}

resource "azurerm_subnet_route_table_association" "vmss_devops_agent_route_table" {
  subnet_id      = azurerm_subnet.Vmss_devops_agent_subnet.id
  route_table_id = azurerm_route_table.route_table.id

}