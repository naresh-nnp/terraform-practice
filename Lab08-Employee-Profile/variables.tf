variable "employee_name" {
    type = string
    /* validation {
        condition = var.employee_name == "Naresh"
        error_message = "Employee name must be 'Naresh'"
    } */
}
variable "environment" {
    type = string
    validation {
        condition = var.environment == "dev" || var.environment == "prod" || var.environment == "default"
        error_message = "environment must be either dev or prod"
    }
}
variable "employee_age" {
    type = string
    validation {
        condition = var.employee_age >= 18 && var.employee_age <= 60
        error_message = "employee age must be between 18 and 60"
    }
}
variable "is_fulltime" {
    type = bool
}
variable "skills" {
    type = list(string)
}
variable "certifications" {
    type = set(string)
}
variable "office" {
    type = map(string)
}
variable "manager_name" {
    type = string
    sensitive = true
}
variable "laptop" {
    type = object({
        brand = string
        ram = number
        os = string
    })
}