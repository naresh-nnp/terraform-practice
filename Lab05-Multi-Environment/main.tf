terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
  }
}

resource "random_string" "deployment_suffix" {
  length  = 5
  upper   = false
  special = false
}

resource "random_string" "list" {

  count = length(var.regions)

  length = 4
  upper = false
  special = false
}

resource "random_string" "map" {

  for_each = var.region_instance_count

  length = 4
  upper = false
  special = false
}
