resource "github_repository" "terraform" {
  name       = "terraform"
  visibility = "public"
  topics     = []
  archived   = false

  allow_auto_merge       = false
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  delete_branch_on_merge = true

  has_downloads        = true
  has_issues           = true
  has_projects         = false
  has_wiki             = false
  vulnerability_alerts = false
}
