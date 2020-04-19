module "testkitchen" {
  source        = "./modules/repository"
  name          = "testkitchen"
  cookbook_team = github_team.testkitchen.id
}

resource "github_team" "testkitchen" {
  name        = "testkitchen"
  description = "testkitchen Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "testkitchen-member-1" {
  team_id  = github_team.testkitchen.id
  username = "Xorima"
  role     = "member"
}
