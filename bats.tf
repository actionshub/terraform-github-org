module "bats" {
  source                     = "./modules/repository"
  name                       = "bats"
  action_team                = github_team.bats.id
  action_name                = "actionshub-bats"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
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
  role     = "maintainer"
}
