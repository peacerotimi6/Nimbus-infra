resource "random_string" "sfx" {
    length  = 8
    upper   = false
    numeric = true
    special = false  
}
locals {
  #strips everything except a-z and 0-9, then lowe-case for name-constrained service
  name-base =lower(replace(var.project_name, "/[^a-zA-Z0-9]/", ""))

  rg_name = "${local.name-base}-rg"
  kv_name = "${local.name-base}kv${random_string.sfx.result}"
  acr_name = "${local.name-base}acr${random_string.sfx.result}" 
  aks_name = "${local.name-base}-aks"
  sa_name = "${local.name-base}sa${random_string.sfx.result}"

}