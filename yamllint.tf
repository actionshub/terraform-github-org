module "yamllint" {
  source        = "./modules/repository"
  name          = "yamllint"
  cookbook_team = github_team.yamllint.id
}

resource "github_team" "yamllint" {
  name        = "yamllint"
  description = "yamllint Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yamllint-member-Xorima" {
  team_id  = github_team.yamllint.id
  username = "Xorima"
  role     = "member"
}
