provider "aws" {
  alias = "apac-test"
  assume_role {
    role_arn = "arn:aws:iam::325249182150:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-dev"
  assume_role {
    role_arn = "arn:aws:iam::755368047369:role/orica-vault-admin-role"
  }  
  region = "us-east-1"
}

provider "aws" {
  alias = "apac-dev"
  assume_role {
    role_arn = "arn:aws:iam::276879320786:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-tst"
  assume_role {
    role_arn = "arn:aws:iam::397130861550:role/orica-vault-admin-role"
  }  
  region = "us-east-1"
}

provider "aws" {
  alias = "nala-poc"
  assume_role {
    role_arn = "arn:aws:iam::548479939582:role/orica-vault-admin-role"
  }  
  region = "us-east-1"
}


provider "aws" {
  alias = "emea-poc"
  assume_role {
    role_arn = "arn:aws:iam::814828618127:role/orica-vault-admin-role"
  }  
  region = "eu-central-1"
}


provider "aws" {
  alias = "emea-tst"
  assume_role {
    role_arn = "arn:aws:iam::104686780071:role/orica-vault-admin-role"
  }  
  region = "eu-central-1"
}


provider "aws" {
  alias = "apac-poc"
  assume_role {
    role_arn = "arn:aws:iam::036090368433:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}
