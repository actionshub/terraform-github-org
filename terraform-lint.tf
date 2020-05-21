module "terraform-lint" {
  source      = "./modules/repository"
  name        = "terraform-lint"
  action_team = github_team.terraform-lint.id
  action_name = "terraform-lint"
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
