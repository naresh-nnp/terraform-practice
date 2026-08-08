terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version =">= 3.6.3"
        }
    }
}

resource "random_string" "project_suffix" {
    length = local.length
    upper = false
    special = false

    count = var.application.instance_count

}

resource "random_string" "env_map" {
    length = local.length
    upper = false
    special = false

    for_each = var.environment_regions
}

module "application" {
    source = "./modules/application"

    application_name = "inventory"
    environment = "Dev"
}

module "my_app" {
    source = "./modules/application"

    application_name = "inventory"
    environment = "Prod"
}
