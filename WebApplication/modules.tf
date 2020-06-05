module "Setup" {
  source = "./0_Setup"
}

module "StaticWebHosting" {
  source = "./1_StaticWebHosting"
}

module "UserManagement" {
  source = "./2_UserManagement"
}

module "ServerlessBackend" {
  source = "./3_ServerlessBackend"
}
