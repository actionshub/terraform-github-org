module "rake" {
  source      = "./modules/repository"
  name        = "rake"
  action_team = github_team.rake.id
  action_name = "actionshub-rake"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "rake" {
  name        = "rake"
  description = "rake Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rake-member-Xorima" {
  team_id  = github_team.rake.id
  username = "Xorima"
  role     = "maintainer"
}
