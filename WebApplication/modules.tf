module "Setup" {
  source = "./0_Setup"
}

module "StaticWebHosting" {
  source = "./1_StaticWebHosting"
}
