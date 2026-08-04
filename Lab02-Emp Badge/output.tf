output "employee_badge" {
  value = "Employee: ${var.employee_name} | Badge ID: ${random_string.badge_id.result}"
}
