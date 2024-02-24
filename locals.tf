locals {
  project = {
    "ryanlive" = {
      description = "ryanlive"
      organization_name = var.organization_name
    }
  }

  workspaces = {
    "ryanlive" = {
      description = "ryanlive"
      organization_name = var.organization_name
      project_id = module.project["ryanlive"].project_id
      execution_mode = "local"
    }

  }
}