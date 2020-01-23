module "github" {
  source            = "./modules/repository"
  name              = ".github"
  cookbook_team     = github_team.admins.id
  homepage_url      = "https://help.github.com/en/articles/creating-a-default-community-health-file-for-your-organization"
  description       = "Community Health Files for Actionshub repos"
  additional_topics = ["community-health"]
}
