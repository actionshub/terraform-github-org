module "rubocop" {
  source      = "./modules/repository"
  name        = "rubocop"
  action_team = github_team.rubocop.id
  action_name = "actionshub-test-kitchen"
}

resource "github_team" "rubocop" {
  name        = "rubocop"
  description = "rubocop Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rubocop-member-Xorima" {
  team_id  = github_team.rubocop.id
  username = "Xorima"
  role     = "member"
}
