terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = ">=3.6.3"
        }
    }
}
resource "random_string" "deployment_id" {
    length = 4
    upper = false
    special = false
}
