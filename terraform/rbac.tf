# Role Assignment for AKS to pull images from ACR
resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}

# Role Assignment for user to manage Key Vault secrets
resource "azurerm_role_assignment" "kv_secrets_officer" {
  principal_id                     = data.azurerm_client_config.current.object_id
  principal_type                   = "User"
  role_definition_name             = "Key Vault Secrets Officer"
  scope                            = azurerm_key_vault.kv.id
}