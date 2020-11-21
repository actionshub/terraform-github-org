module "markdownlint" {
  source      = "./modules/repository"
  name        = "markdownlint"
  action_team = github_team.markdownlint.id
  action_name = "markdownlint-mdl-action"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "markdownlint" {
  name        = "markdownlint"
  description = "markdownlint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "markdownlint-member-Xorima" {
  team_id  = github_team.markdownlint.id
  username = "Xorima"
  role     = "maintainer"
}
