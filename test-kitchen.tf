module "test-kitchen" {
  source        = "./modules/repository"
  name          = "test-kitchen"
  cookbook_team = github_team.test-kitchen.id
}

resource "github_team" "test-kitchen" {
  name        = "test-kitchen"
  description = "test-kitchen Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "test-kitchen-member-1" {
  team_id  = github_team.test-kitchen.id
  username = "Xorima"
  role     = "member"
}
