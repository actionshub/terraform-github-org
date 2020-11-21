module "actionshub" {
  source                     = "./modules/repository"
  name                       = "actionshub"
  action_team                = github_team.admins.id
  description                = "Repository to hold org wide issues and thoughts"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "admins" {
  name        = "admins"
  description = "admins of Actionshub"
  privacy     = "closed"
}

resource "github_team_membership" "admins-member-Xorima" {
  team_id  = github_team.admins.id
  username = "Xorima"
  role     = "maintainer"
}
