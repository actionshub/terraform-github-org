module "chef-delivery" {
  source                     = "./modules/repository"
  name                       = "chef-delivery"
  action_team                = github_team.chef-delivery.id
  action_name                = "chef-delivery-action"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "chef-delivery" {
  name        = "chef-delivery"
  description = "chef-delivery Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-delivery-member-Xorima" {
  team_id  = github_team.chef-delivery.id
  username = "Xorima"
  role     = "maintainer"
}
