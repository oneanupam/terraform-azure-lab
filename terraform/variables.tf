# Authentication Specific Variables
variable "subscription_id" {
  type        = string
  description = "the id of the subscription"
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

# variable "nsg_name" {}
# variable "nsg_rules" {}
# variable "avset_names" {}

# # Variable Declaration - PaaS Resources
# variable "appsp_names" {}

# # Variable Declaration - Database Resources
# variable "sqlsvr_name" {}
# variable "epool_name" {}

# # Variable Declaration - Storage Resources
# variable "sa_name" {
#   description = "Name of the storage account"
#   validation {
#     condition = (
#       length(var.sa_name) >= 3 && length(var.sa_name) <= 24 && can(regex("^[a-z0-9]*$", var.sa_name))
#     )
#     error_message = "Storage account name can only consist of lowercase letters and numbers, and must be between 3 and 24 characters long."
#   }
# }
