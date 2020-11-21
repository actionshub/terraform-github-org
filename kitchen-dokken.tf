module "kitchen-dokken" {
  source                     = "./modules/repository"
  name                       = "kitchen-dokken"
  action_team                = github_team.kitchen-dokken.id
  action_name                = "actionshub-test-kitchen"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
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
