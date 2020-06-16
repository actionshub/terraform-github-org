module "yamllint" {
  source      = "./modules/repository"
  name        = "yamllint"
  action_team = github_team.yamllint.id
  action_name = "yaml-lint-action"
}

resource "github_team" "yamllint" {
  name        = "yamllint"
  description = "yamllint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yamllint-member-Xorima" {
  team_id  = github_team.yamllint.id
  username = "Xorima"
  role     = "maintainer"
}
