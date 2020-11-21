module "terraform-lint" {
  source      = "./modules/repository"
  name        = "terraform-lint"
  action_team = github_team.terraform-lint.id
  action_name = "terraform-lint"
  label_validator_config     = local.label_validator_config
  release_creator_config     = local.release_creator_config
  changelog_reset_config     = local.changelog_reset_config
  changelog_validator_config = local.changelog_validator_config
}

resource "github_team" "terraform-lint" {
  name        = "terraform-lint"
  description = "terraform-lint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "terraform-lint-member-Xorima" {
  team_id  = github_team.terraform-lint.id
  username = "Xorima"
  role     = "maintainer"
}
