terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = ">= 3.6.3"
        }
    }
}
resource "random_string" "employee_id" {
    length = 5
    upper = false
    special = false
}
