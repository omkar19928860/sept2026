module "rg1" {
  source          = "../child/01_resourcegroup"
  resource_groups = var.rgs

}
