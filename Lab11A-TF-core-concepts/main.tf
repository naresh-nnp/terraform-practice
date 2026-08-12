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