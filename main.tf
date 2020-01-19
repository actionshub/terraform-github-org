module "membership" {
  source = "./modules/org_membership"
}

provider "github" {
  token        = var.github_token
  organization = "actionshub"
}

variable "github_token" {}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "actionshub"
    workspaces {
      name = "terraform-github-org"
    }
  }
}
