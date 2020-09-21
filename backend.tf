terraform {
  backend "s3" {
    bucket         = "orica-global-prd-terraform"
    key            = "logicmonitor-common/logicmonitor_aws.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "orica-global-prd-terraform-state-lock"
    encrypt        = true
    role_arn       = "arn:aws:iam::464902759691:role/orica-vault-admin-role"
  }
}
