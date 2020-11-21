module "website" {
  source                     = "./modules/repository"
  name                       = "website"
  action_team                = github_team.website.id
  homepage_url               = "https://www.actionshub.org"
  description                = "Code to run our website"
  additional_topics          = ["website"]
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "website" {
  name        = "website"
  description = "website Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "website-member-Xorima" {
  team_id  = github_team.website.id
  username = "Xorima"
  role     = "maintainer"
}
