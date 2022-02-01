module "cookstyle" {
  source                     = "./modules/repository"
  name                       = "cookstyle"
  action_team                = github_team.cookstyle.id
  action_name                = "cookstyle-action"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "cookstyle" {
  name        = "cookstyle"
  description = "cookstyle Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "cookstyle-member-ramereth" {
  team_id  = github_team.cookstyle.id
  username = "ramereth"
  role     = "maintainer"
}
