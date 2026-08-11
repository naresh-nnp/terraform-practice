variable "application_name" {
    type = string
}
variable "secret_value" {
    type = string
    sensitive = true
}
variable "environments" {
    type = list(string)
    validation {
        condition = alltrue([
            for env in var.environments : contains (["dev", "test", "prod"], env)
        ])
        error_message = "environments should be only dev, test or prod"
    }
}
variable "environment_regions" {
    type = map(string)
}
variable "enable_monitoring" {
    type = bool
}
