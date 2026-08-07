locals {
    employee_profile = "${var.employee_name}-${var.environment}-${random_string.employee_id.result}"
}