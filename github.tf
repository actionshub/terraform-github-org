module "github" {
  source            = "./modules/repository"
  name              = ".github"
  action_team       = github_team.admins.id
  homepage_url      = "https://help.github.com/en/articles/creating-a-default-community-health-file-for-your-organization"
  description       = "Community Health Files for Actionshub repos"
  additional_topics = ["community-health"]
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}
