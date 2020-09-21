locals{
  enable_logicmonitor     = true
}

module "logicmonitor_apac_test" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "apac-test"
  providers = {
    aws = aws.apac-test
  }
}


module "logicmonitor_nala_dev" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-dev"
  providers = {
    aws = aws.nala-dev
  }
}


module "logicmonitor_apac_dev" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "apac-dev"
  providers = {
    aws = aws.apac-dev
  }
}


module "logicmonitor_nala_tst" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-tst"
  providers = {
    aws = aws.nala-tst
  }
}


module "logicmonitor_nala_poc" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-poc"
  providers = {
    aws = aws.nala-poc
  }
}


module "logicmonitor_emea_poc" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-poc"
  providers = {
    aws = aws.emea-poc
  }
}


module "logicmonitor_emea_tst" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-tst"
  providers = {
    aws = aws.emea-tst
  }
}


module "logicmonitor_apac_poc" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "apac-poc"
  providers = {
    aws = aws.apac-poc
  }
}

