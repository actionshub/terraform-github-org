module "test-kitchen" {
  source                     = "./modules/repository"
  name                       = "test-kitchen"
  action_team                = github_team.test-kitchen.id
  action_name                = "actionshub-test-kitchen"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "test-kitchen" {
  name        = "test-kitchen"
  description = "test-kitchen Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "test-kitchen-member-1" {
  team_id  = github_team.test-kitchen.id
  username = "Xorima"
  role     = "maintainer"
}
