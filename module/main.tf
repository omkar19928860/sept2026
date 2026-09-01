module "rg1" {
  source          = "../child/01_resourcegroup"
  resource_groups = var.rgs

}

module "stg1" {
  source     = "../child/02_storageaccount"
  stg        = var.storage_accounts
  depends_on = [module.rg1]
}

module "vnet1" {
  source     = "../child/03_virtualnetwork"
  vnet       = var.virtual_networks
  depends_on = [module.rg1]
}

module "subnet" {
  source     = "../child/04_subnet"
  subnet     = var.subnet
  depends_on = [module.vnet1]
}