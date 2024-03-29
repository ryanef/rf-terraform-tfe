locals {
  project = {
    "ryanlive" = {
      description = "ryanlive"
      organization_name = var.organization_name
    }
  }

  workspaces = {
    "tfe-workspace" = {
      description = "ryanlive"
      organization_name = var.organization_name
      project_id = module.project["ryanlive"].project_id
      execution_mode = "remote"
      vcs_repo_id = "${var.github_org_name}/rf-terraform-tfe"
    }

    "github-workspace" = {
      description = "Workspace for GH automation"
      execution_mode = "remote"
      organization_name = var.organization_name
      project_id = module.project["ryanlive"].project_id
      vcs_repo_id = "${var.github_org_name}/rf-terraform-gh"
    }
    "aws-vpc-workspace" = {
      description = "aws-vpc-workspace"
      execution_mode = "remote"
      organization_name = var.organization_name
      project_id = module.project["ryanlive"].project_id
      vcs_repo_id = "${var.github_org_name}/rf-terraform-aws-vpc"
    }
    "aws-compute-workspace" = {
      description = "aws-compute-workspace"
      execution_mode = "local"
      organization_name = var.organization_name
      project_id = module.project["ryanlive"].project_id
      vcs_repo_id = "${var.github_org_name}/rf-terraform-aws-compute"
    }

  }
}