module "rake" {
  source        = "./modules/repository"
  name          = "rake"
  cookbook_team = github_team.rake.id
}

resource "github_team" "rake" {
  name        = "rake"
  description = "rake Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rake-member-Xorima" {
  team_id  = github_team.rake.id
  username = "Xorima"
  role     = "member"
}
