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
}
resource "random_string" "suffix" {
    length = 6
    upper = false
    special = false
}