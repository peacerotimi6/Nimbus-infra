resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.aks_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.project_name}-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "standard_d2ads_v7"
  }

  identity { type = "SystemAssigned" }
  tags = var.tags
}
