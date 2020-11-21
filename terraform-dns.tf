module "terraform-dns" {
  source                     = "./modules/repository"
  name                       = "terraform-dns"
  action_team                = github_team.admins.id
  homepage_url               = "https://www.actionshub.org"
  description                = "Auto configuration of our DNS provider"
  additional_topics          = ["dns"]
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}
