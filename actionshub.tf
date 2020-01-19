module "actionshub" {
  source        = "./modules/repository"
  name          = "actionshub"
  cookbook_team = github_team.admins.id
}

resource "github_team" "admins" {
  name        = "admmins"
  description = "admins of Actionshub"
  privacy     = "closed"
}

resource "github_team_membership" "admins-member-Xorima" {
  team_id  = github_team.admins.id
  username = "Xorima"
  role     = "member"
}
