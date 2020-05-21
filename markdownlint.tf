module "markdownlint" {
  source      = "./modules/repository"
  name        = "markdownlint"
  action_team = github_team.markdownlint.id
  action_name = "markdownlint-mdl-action"
}

resource "github_team" "markdownlint" {
  name        = "markdownlint"
  description = "markdownlint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "markdownlint-member-Xorima" {
  team_id  = github_team.markdownlint.id
  username = "Xorima"
  role     = "member"
}
