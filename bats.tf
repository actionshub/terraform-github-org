module "bats" {
  source      = "./modules/repository"
  name        = "bats"
  action_team = github_team.bats.id
  action_name = "actionshub-bats"
}

resource "github_team" "bats" {
  name        = "bats"
  description = "bats Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "bats-member-rshade" {
  team_id  = github_team.bats.id
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "bats-member-Xorima" {
  team_id  = github_team.bats.id
  username = "Xorima"
  role     = "member"
}
