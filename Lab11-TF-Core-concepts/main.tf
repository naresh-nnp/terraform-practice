terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = ">= 3.6.3"
        }
    }
}
resource "random_string" "suffix" {
    length = local.length
    special = false
    upper = false
}

resource "random_string" "count" {
    length = local.length
    special = false
    upper = false
    
    count = var.application.instance_count
}

resource "random_string" "env_regions" {
    length = local.length
    special = false
    upper = false
    
    for_each = var.environment_regions
}

module "application" {
    source = "./modules/application"

    application_name = "Facebook"
    environment = "test"
    instance_count = 2
}
