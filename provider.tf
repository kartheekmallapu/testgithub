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

provider "aws" {
  alias = "network"
  assume_role {
    role_arn = "arn:aws:iam::786644123640:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-prd"
  assume_role {
    role_arn = "arn:aws:iam::412346263232:role/orica-vault-admin-role"
  }  
  region = "us-east-1"
}

provider "aws" {
  alias = "pubweb-dev"
  assume_role {
    role_arn = "arn:aws:iam::617731613755:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "contactcenter-dev"
  assume_role {
    role_arn = "arn:aws:iam::329476621799:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "contactcenter-dev"
  assume_role {
    role_arn = "arn:aws:iam::329476621799:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "security"
  assume_role {
    role_arn = "arn:aws:iam::631187256584:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-network"
  assume_role {
    role_arn = "arn:aws:iam::526114366118:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "contactcenter-tst"
  assume_role {
    role_arn = "arn:aws:iam::676490780671:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-shared"
  assume_role {
    role_arn = "arn:aws:iam::910738028057:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "nala-tst"
  assume_role {
    role_arn = "arn:aws:iam::397130861550:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "pubweb-tst"
  assume_role {
    role_arn = "arn:aws:iam::189716241447:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "servicedesk"
  assume_role {
    role_arn = "arn:aws:iam::501422052384:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "shared-ent"
  assume_role {
    role_arn = "arn:aws:iam::758309873131:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "emea-shared"
  assume_role {
    role_arn = "arn:aws:iam::133374667786:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "pubweb-prd"
  assume_role {
    role_arn = "arn:aws:iam::043469002063:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "apac-network"
  assume_role {
    role_arn = "arn:aws:iam::450784677134:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "emea-prd"
  assume_role {
    role_arn = "arn:aws:iam::804511811405:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "emea-dev"
  assume_role {
    role_arn = "arn:aws:iam::705423202552:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "emea-network"
  assume_role {
    role_arn = "arn:aws:iam::809053831068:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "apac-prd"
  assume_role {
    role_arn = "arn:aws:iam::052578022106:role/orica-vault-admin-role"
  }  
  region = "ap-southeast-2"
}
