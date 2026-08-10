terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.3"
    }
  }
}
module "deployment" {
    source = "./modules/environment"

    count = length(var.environments)

    application_name = "inventory"
    environment = var.environments[count.index]
    region = var.regions[count.index]
}