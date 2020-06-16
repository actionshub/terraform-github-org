module "website" {
  source            = "./modules/repository"
  name              = "website"
  action_team       = github_team.website.id
  homepage_url      = "https://www.actionshub.org"
  description       = "Code to run our website"
  additional_topics = ["website"]
}

resource "github_team" "website" {
  name        = "website"
  description = "website Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "website-member-Xorima" {
  team_id  = github_team.website.id
  username = "Xorima"
  role     = "maintainer"
}
