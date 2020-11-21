module "rubocop" {
  source      = "./modules/repository"
  name        = "rubocop"
  action_team = github_team.rubocop.id
  action_name = "actionshub-test-kitchen"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "rubocop" {
  name        = "rubocop"
  description = "rubocop Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rubocop-member-Xorima" {
  team_id  = github_team.rubocop.id
  username = "Xorima"
  role     = "maintainer"
}
