module "policy" {
    source = "./modules/roles-policy"
    github_repo = var.github_repo
    project     = var.project
}

