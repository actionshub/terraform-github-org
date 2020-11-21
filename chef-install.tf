module "chef-install" {
  source      = "./modules/repository"
  name        = "chef-install"
  action_team = github_team.chef-install.id
  action_name = "actionshub-chef-install"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config

}

resource "github_team" "chef-install" {
  name        = "chef-install"
  description = "chef-install Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-install-member-Xorima" {
  team_id  = github_team.chef-install.id
  username = "Xorima"
  role     = "maintainer"
}
