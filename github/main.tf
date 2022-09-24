terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  # token pulled from $GITHUB_TOKEN
  owner = "kanziw-com"
}
