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


module "logicmonitor_network" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "network"
  providers = {
    aws = aws.network
  }
}


module "logicmonitor_nala-prd" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-prd"
  providers = {
    aws = aws.nala-prd
  }
}


module "logicmonitor_pubweb-dev" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "pubweb-dev"
  providers = {
    aws = aws.pubweb-dev
  }
}

module "logicmonitor_contactcenter-dev" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "contactcenter-dev"
  providers = {
    aws = aws.contactcenter-dev
  }
}

module "logicmonitor_security" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "security"
  providers = {
    aws = aws.security
  }
}


module "logicmonitor_nala-network" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-network"
  providers = {
    aws = aws.nala-network
  }
}


module "logicmonitor_contactcenter-tst" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "contactcenter-tst"
  providers = {
    aws = aws.contactcenter-tst
  }
}

module "logicmonitor_nala-shared" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "nala-shared"
  providers = {
    aws = aws.nala-shared
  }
}


module "logicmonitor_pubweb-tst" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "pubweb-tst"
  providers = {
    aws = aws.pubweb-tst
  }
}

module "logicmonitor_servicedesk" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "servicedesk"
  providers = {
    aws = aws.servicedesk
  }
}


module "logicmonitor_shared-ent" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "shared-ent"
  providers = {
    aws = aws.shared-ent
  }
}

module "logicmonitor_emea-shared" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-shared"
  providers = {
    aws = aws.emea-shared
  }
}

module "logicmonitor_pubweb-prd" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "pubweb-prd"
  providers = {
    aws = aws.pubweb-prd
  }
}

module "logicmonitor_apac-network" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "apac-network"
  providers = {
    aws = aws.apac-network
  }
}


module "logicmonitor_emea-prd" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-prd"
  providers = {
    aws = aws.emea-prd
  }
}


module "logicmonitor_emea-dev" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-dev"
  providers = {
    aws = aws.emea-dev
  }
}


module "logicmonitor_emea-network" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "emea-network"
  providers = {
    aws = aws.emea-network
  }
}


module "logicmonitor_apac-prd" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "apac-prd"
  providers = {
    aws = aws.apac-prd
  }
}

module "logicmonitor_master" {
  source                         = "git::git@gitlab.com:orica/terraform-modules/logicmonitor.git?ref=v0.1.0"
  enable_logicmonitor = local.enable_logicmonitor
  account_alias                  = "master"
  providers = {
    aws = aws.master
  }
}
