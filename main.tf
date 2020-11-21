module "membership" {
  source = "./modules/org_membership"
}

provider "github" {
  token        = var.github_token
  organization = "actionshub"
  version      = "= 3.0" # 3.1.0 has a breaking change, https://github.com/terraform-providers/terraform-provider-github/issues/566
}
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "actionshub"
    workspaces {
      name = "terraform-github-org"
    }
  }
}
