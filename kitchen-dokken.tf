module "kitchen-dokken" {
  source      = "./modules/repository"
  name        = "kitchen-dokken"
  action_team = github_team.kitchen-dokken.id
  action_name = "actionshub-test-kitchen"
}

resource "github_team" "kitchen-dokken" {
  name        = "kitchen-dokken"
  description = "kitchen-dokken Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kitchen-dokken-member-Xorima" {
  team_id  = github_team.kitchen-dokken.id
  username = "Xorima"
  role     = "member"
}
