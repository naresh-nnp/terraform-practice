output "employee_profile" {
    value = "Employee Profile: ${local.employee_profile}"
}
output "employee_status" {
    value = "Employee registered successfully"
}
output "employee_skills" {
    value = var.skills
}
output "employee_certifications" {
    value = var.certifications
}
output "office_location" {
    value = var.office
}
output "laptop_information" {
    value = var.laptop
}
output "manager" {
    value = var.manager_name
    sensitive = true
}