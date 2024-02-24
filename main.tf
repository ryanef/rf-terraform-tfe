module "project" {
  source  = "app.terraform.io/ryanlive/project/tfe"
  version = "1.0.1"

  for_each = local.project

  name = each.key
  description = each.value.description
  organization_name = each.value.organization_name
}

module "workspaces" {
  source  = "app.terraform.io/ryanlive/workspaces/tfe"
  version = "1.0.0"

  for_each = local.workspaces

  name = each.key
  description = each.value.description
  execution_mode = each.value.execution_mode
  organization_name = each.value.organization_name
  project_id = each.value.project_id

  vcs_repo = {
    github_app_installation_id = data.tfe_github_app_installation.app.id
    identifier = each.value.vcs_repo_id
  }
}

moved {
  from = module.workspaces["ryanlive"]
  to = module.workspaces["tfe-workspace"]
}



