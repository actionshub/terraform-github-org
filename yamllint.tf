module "yamllint" {
  source                     = "./modules/repository"
  name                       = "yamllint"
  action_team                = github_team.yamllint.id
  action_name                = "yaml-lint-action"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "yamllint" {
  name        = "yamllint"
  description = "yamllint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yamllint-member-Xorima" {
  team_id  = github_team.yamllint.id
  username = "Xorima"
  role     = "maintainer"
}
