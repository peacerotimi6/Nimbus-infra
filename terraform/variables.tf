variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "nimbus"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "Uk South"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    environment = "Dev"
    project     = "nimbus"
  }
}

#ACR
variable "acr_sku" {
  description = "SKU for the Azure Container Registry (Basic | Standard | Premium)"
  type        = string
  default     = "Premium"
}

#AKS
variable "aks_node_count" {
  description = "Number of AKS nodes in the default node pool"
  type        = number
  default     = 3
}

variable "aks_vm_size" {
  description = "VM size for AKS node pool"
  type        = string
  default     = "standard_d128ads_v7"
}

variable "aks_node_size" {
  description = "Legacy VM size variable (keep for compatibility if referenced elsewhere)"
  type        = string
  default     = "Standard_D2s_v3"
}

#Key Vault
variable "key_vault_sku" {
  description = "SKU for Azure Key Vault"
  type        = string
  default     = "standard"
}

#Storage
variable "storage_replication_type" {
  description = "Storage account replication type (e.g. LRS, GRS, ZRS, GZRS)"
  type        = string
  default     = "LRS"
}



