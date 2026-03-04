# Authentication Specific Variables
variable "bld_subscription_id" {
  type        = string
  description = "the id of the bld subscription"
}

variable "prd_subscription_id" {
  type        = string
  description = "the id of the prd subscription"
}

variable "tenant_id" {
  type        = string
  description = "the tenant id of the subscription"
}

variable "location" {
  type        = string
  description = "the location of the azure resources"
  default     = "UK South"
}

variable "rg_name" {
  type        = string
  description = "the name of the resource group"
}

variable "vnet_details" {
  type = object({
    name          = string
    address_space = list(string)
  })
  description = "the object of the vnet details"
}

variable "snet_details" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
  description = "the map of the subnet details"
}

variable "kv_name" {
  type        = string
  description = "the name of the key vault"
}

variable "windows_vm_details" {
  type        = any
  description = "the map of the windows vm details"
}

variable "storage_account_name" {
  type        = string
  description = "the name of the storage account"
}

# variable "nsg_name" {}
# variable "nsg_rules" {}
# variable "avset_names" {}

# # Variable Declaration - PaaS Resources
# variable "appsp_names" {}

# # Variable Declaration - Database Resources
# variable "sqlsvr_name" {}
# variable "epool_name" {}
