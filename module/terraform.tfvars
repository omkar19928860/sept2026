rgs = {
  rg1rs = {
    name     = "rg1"
    location = "East US"
  }
  rge2rs = {
    name     = "rg2"
    location = "West US"
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet1"
    resource_group_name = "rg1"
    location            = "East US"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "vnet2"
    resource_group_name = "rg2"
    location            = "West US"
    address_space       = ["10.1.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet2"
    resource_group_name  = "rg2"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.1.0/24"]
  }
}

storage_accounts = {
  stg1s = {
    name                     = "stg1omkstg1"
    resource_group_name      = "rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "stg2omstg2"
    resource_group_name      = "rg2"
    location                 = "West US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
