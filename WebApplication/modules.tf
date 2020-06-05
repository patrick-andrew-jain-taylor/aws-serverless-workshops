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

module "RESTfulAPIs" {
  source = "./4_RESTfulAPIs"
  invoke_arn = module.ServerlessBackend.invoke_arn
  provider_arns = [module.UserManagement.arn]
}
