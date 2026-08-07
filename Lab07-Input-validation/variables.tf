variable "application_name" {
    type = string
    validation {
        condition = var.application_name == "inventory"
        error_message = "application name must be 'inventory'"
    }
}
variable "environment" {
    type = string
    validation {
        condition = var.environment =="dev" || var.environment =="prod"
        error_message = "environment must be either dev or prod"
    }
}
variable "instance_count" {
    type = number
    validation {
        condition = var.instance_count >= 1 && var.instance_count <= 5
        error_message = "Instance count must between 1 and 5"
    }
}
variable "enable_backup" {
    type = bool
}
variable "owner_name" {
    type = string
    sensitive = true
}