# terraform-github-org

For managing the Actionshub Github Organisation

## Usage

## Becoming A Member

Add yourself to `modules/org_membership/main.tf`

## Adding a Repository

Create a file called `repository.tf` where repository is the name of your repository e.g. `terraform-lint.tf`

Example repository with one maintainer.

```hcl
module "terraform-lint" {
  source        = "./modules/repository"
  name          = "terraform-lint"
  cookbook_team = github_team.terraform-lint.id
}

resource "github_team" "terraform-lint" {
  name        = "terraform-lint"
  description = "terraform-lint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "terraform-lint-member-Xorima" {
  team_id  = github_team.terraform-lint.id
  username = "Xorima"
  role     = "member"
}
```

## Becoming an Action maintainer

Add yourself to the repository file e.g. `terraform-lint.tf`

All terraform resource names must be unique. The easiest way to do this is

- copy the previous resource,
- replace the name with your username e.g. `terraform-lint-maintainer-Xorima` --> `terraform-lint-maintainer-tas50`
- change their name to yours.

## Contributors

This project exists thanks to all the people who contribute, if you see an issue please do join in and help
