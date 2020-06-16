module "danger-rb" {
  source      = "./modules/repository"
  name        = "danger-rb"
  action_team = github_team.danger-rb.id
  action_name = "actionshub-danger-rb"
}

resource "github_team" "danger-rb" {
  name        = "danger-rb"
  description = "danger-rb Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "danger-rb-member-Xorima" {
  team_id  = github_team.danger-rb.id
  username = "Xorima"
  role     = "maintainer"
}
