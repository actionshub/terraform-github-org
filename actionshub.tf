module "actionshub" {
  source      = "./modules/repository"
  name        = "actionshub"
  action_team = github_team.admins.id
  description = "Repository to hold org wide issues and thoughts"
}

resource "github_team" "admins" {
  name        = "admins"
  description = "admins of Actionshub"
  privacy     = "closed"
}

resource "github_team_membership" "admins-member-Xorima" {
  team_id  = github_team.admins.id
  username = "Xorima"
  role     = "member"
}
