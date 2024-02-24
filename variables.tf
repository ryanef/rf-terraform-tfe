variable "organization_name" {
  default = "ryanlive"
  type = string
  description = "TF Cloud organization name"
}

variable "github_app_id" {
  default = 46056831
  type = number
  description = "github > settings> applications > TF Cloud > installation ID is shown in URL"
}

variable "github_org_name" {
  default = "ryanef"
  description = "github account name"
}