#Rescorce Group
output "resource_group_name" {
   description = "Name of the resource group"  
   value = azurerm_resource_group.rg.name
}

output "resource_group_location" {
   description = "Location of the resource group"  
   value = azurerm_resource_group.rg.location
} 

#Azure Container Registry
output "acr_name" {
   description = "Name of the Azure Container Registry"
   value = azurerm_container_registry.acr.name
}

output "acr_login_server" {
   description = "Login server of the Azure Container Registry"
   value = azurerm_container_registry.acr.login_server
}   

#AkS Cluster
output "aks_cluster_name" {
   description = "Name of the AKS cluster"
   value = azurerm_kubernetes_cluster.aks.name
}   

output "aks_kube_identity" {
   description = "Kube config for the AKS cluster"
   value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

#key vault
output "key_vault_name" {
   description = "Name of the Key Vault"
   value = azurerm_key_vault.kv.name
}

#storage account
output "storage_account_name" {
   description = "Name of the Storage Account"
   value = azurerm_storage_account.sa.name
}

output "azurerm_storage_container" {
  description = "The name of the storage container for Terraform state"
    value       = azurerm_storage_container.tfstate.name
}