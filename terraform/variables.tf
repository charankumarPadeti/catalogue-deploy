variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "common_tags" {
  type = map 
  default = {
    project = "Roboshop"
    Environment ="Dev"
    Terraform = "True"
  }
}

variable "zone_name" {
  default = "devopspractice.fun"
}

variable "tags" {
  default = {
    component = "catalogue"
  }
}

variable app_version {
  
}

variable "iam_instance_profile" {
  default = "ShellScriptRoleForRoboshop"
}