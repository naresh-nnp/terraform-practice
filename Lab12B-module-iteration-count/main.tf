terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.3"
    }
  }
}

module "app_envs" {
    source = "./modules/application"
    count = length(var.environments)

    application_name = var.application
    environment = var.environments[count.index]
    region = var.regions[count.index]
}