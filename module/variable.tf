variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}


variable "storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}

variable "virtual_networks" {
    type = map(object({
        name     = string
        resource_group_name = string
        location = string
        address_space = list(string)
    }))
  
}
