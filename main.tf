resource "azurerm_resource_group" "my_resg" {
  name     = var.resource_details.name
  location = var.resource_details.location
}

resource "azurerm_kubernetes_cluster" "my_cluster" {
  name                = var.kubernates_details.name
  location            = var.resource_details.location
  resource_group_name = var.resource_details.name
  dns_prefix          = var.kubernates_details.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2ms"
  }

  identity {
    type = "SystemAssigned"
  }
  depends_on = [
    azurerm_resource_group.my_resg
  ]
}