module "danger-rb" {
  source                     = "./modules/repository"
  name                       = "danger-rb"
  action_team                = github_team.danger-rb.id
  action_name                = "actionshub-danger-rb"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "danger-rb" {
  name        = "danger-rb"
  description = "danger-rb Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "danger-rb-member-Xorima" {
  team_id  = github_team.danger-rb.id
  username = "Xorima"
  role     = "maintainer"
}
