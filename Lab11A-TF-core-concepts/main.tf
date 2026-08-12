terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.3"
    }
  }
}

resource "random_string" "application" {
    length = 4
    upper = false
    special = false
    count = length(var.environments)
}
resource "random_string" "suffix" {
    length = 6
    upper = false
    special = false
}
resource "random_string" "env_regions" {
    length = 6
    upper = false
    special = false

    for_each = var.environment_regions
}
resource "random_string" "suffix_length" {
  length = local.suffix_length
  upper = false
  special = false
}
/* module "application" {
  source = "./modules/application"

  application_name = "inventory-module-app"
  environment = "dev-module"
  region = "eastus"
} */
module "application_stamps" {
  source = "./modules/application"
  count = length(local.application_stamps)

  application_name = var.application_name
  environment = local.application_stamps[count.index].environment
  region = local.application_stamps[count.index].region
  min_node_count = local.application_stamps[count.index].min_node_count
  max_node_count = local.application_stamps[count.index].max_node_count
}

module "application_regions_module" {
  source = "./modules/application"
  for_each = local.application_regions

  application_name = var.application_name
  environment = each.key
  region = each.value.region
  min_node_count = each.value.min_node_count
  max_node_count = each.value.max_node_count
}
