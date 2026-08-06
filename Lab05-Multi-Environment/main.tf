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
