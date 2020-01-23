module "danger-rb" {
  source        = "./modules/repository"
  name          = "danger-rb"
  cookbook_team = github_team.danger-rb.id
}

resource "github_team" "danger-rb" {
  name        = "danger-rb"
  description = "danger-rb Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "danger-rb-member-Xorima" {
  team_id  = github_team.danger-rb.id
  username = "Xorima"
  role     = "member"
}
