module "terraform-dns" {
  source            = "./modules/repository"
  name              = "terraform-dns"
  cookbook_team     = github_team.admins.id
  homepage_url      = "https://www.actionshub.org"
  description       = "Auto configuration of our DNS provider"
  additional_topics = ["dns"]
}
