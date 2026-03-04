# Variable Definition
subscription_id = "542a660f-0dc9-4007-9f1b-7fdd4b11da13"
tenant_id       = "82394dbd-97a0-4662-b529-166bb2996f3a"
location        = "UK South"

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

# # Variable Definition - Storage Resources
# sa_name = "fctstsa01s"
