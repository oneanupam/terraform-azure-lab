# Variable Definition

# Subscription and Tenant Details to be passed thru terraform.auto.tfvars
# bld_subscription_id = ""
# tenant_id           = ""
location = "UK South"

rg_name = "oneanupam-bld-rg-20"

vnet_details = {
  name          = "oneanupam-bld-vnet-20"
  address_space = ["10.0.0.0/16"]
}

snet_details = {
  snet-01 = {
    name          = "oneanupam-bld-snet-01"
    address_space = ["10.0.1.0/24"]
  },
  snet-02 = {
    name          = "oneanupam-bld-snet-02"
    address_space = ["10.0.2.0/24"]
  },
  snet-03 = {
    name          = "oneanupam-bld-snet-03"
    address_space = ["10.0.3.0/24"]
  }
}

kv_name = "oneanupam-bld-kv-20"
windows_vm_details = {
  vm-01 = {
    name           = "vm-01"
    admin_username = "azureuser"
    size           = "Standard_DS1_v2"
  },
  vm-02 = {
    name           = "vm-02"
    admin_username = "azureuser"
    size           = "Standard_DS1_v2"
  },
  vm-03 = {
    name           = "vm-03"
    admin_username = "azureuser"
    size           = "Standard_DS1_v2"
  }
}

storage_account_name = "oneanupamsa20"

# nsg_name = ["FC-TST-WEB-SNET-NSG", "FC-TST-APP-SNET-NSG", "FC-TST-DBS-SNET-NSG"]
# nsg_rules = [
#   { "rule_name" = "Rule-01", "priority" = "100", "ingress_port" = "80" },
#   { "rule_name" = "Rule-02", "priority" = "101", "ingress_port" = "443" }
# ]
# avset_names = ["FC-TST-AST-01", "FC-TST-AST-02"]

# # Variable Definition - PaaS Resources
# appsp_names = ["FC-TST-ASP-01", "FC-TST-ASP-02"]

# # Variable Definition - Database Resources
# sqlsvr_name = "fc-tst-sqlsvr-01"
# epool_name  = "fc-tst-epool-01"
