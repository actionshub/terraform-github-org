module "test-kitchen" {
  source      = "./modules/repository"
  name        = "test-kitchen"
  action_team = github_team.test-kitchen.id
  action_name = "actionshub-test-kitchen"
}

resource "github_team" "test-kitchen" {
  name        = "test-kitchen"
  description = "test-kitchen Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "test-kitchen-member-1" {
  team_id  = github_team.test-kitchen.id
  username = "Xorima"
  role     = "member"
}
