resource "random_string" "employee_id" {
  length  = 6
  special = false
  upper   = false
}
