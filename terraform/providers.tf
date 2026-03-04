# Provider block to configure Azure Provider for BLD Subscription
provider "azurerm" {
  features {}
  subscription_id = var.bld_subscription_id
  tenant_id       = var.tenant_id
}

# Provider block to configure Azure Provider for PRD Subscription
provider "azurerm" {
  alias = "prd"
  features {}
  subscription_id = var.prd_subscription_id
  tenant_id       = var.tenant_id
}
