# Fetch current Azure account info
data "azurerm_client_config" "current" {}

# Key Vault
resource "azurerm_key_vault" "kv" {
  name                        = local.kv_name
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  enable_rbac_authorization   = true
  purge_protection_enabled    = false
  sku_name                    = var.key_vault_sku
  tags                        = var.tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
  }
}