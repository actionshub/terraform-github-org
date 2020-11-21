variable "github_token" {
}

variable "label_validator_url" {}
variable "webhook_secret_key" {}

locals {
  label_validator_config = {
    url     = var.label_validator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
}

variable "release_creator_url" {}

locals {
  release_creator_config = {
    url     = var.release_creator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
}

variable "changelog_reset_url" {}

locals {
  changelog_reset_config = {
    url     = var.changelog_reset_url
    secret  = var.webhook_secret_key
    enabled = true
  }
}

variable "changelog_validator_url" {}

locals {
  changelog_validator_config = {
    url     = var.changelog_validator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
}

