module "chef-install" {
  source        = "./modules/repository"
  name          = "chef-install"
  cookbook_team = github_team.chef-install.id
}

resource "github_team" "chef-install" {
  name        = "chef-install"
  description = "chef-install Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-install-member-Xorima" {
  team_id  = github_team.chef-install.id
  username    = "Xorima"
  role     = "member"
}
