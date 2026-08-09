variable "application_name" {
    type = string
}
variable "environment" {
    type = string
    validation {
        condition = var.environment == "dev" || var.environment == "test" || var.environment =="prod" || var.environment =="prod-env"
        error_message = "environment should be only either dev,test,prod, prod-env"
    }
}
variable "owner" {
    type = string
}
variable "instance_count" {
    type = number
}
variable "enabled" {
    type = bool
}
variable "regions" {
    type = list(string)
}
variable "environment_regions" {
    type = map(string)
}
variable "application" {
    type = object({
        name = string
        owner = string
        instance_count = number
        enabled = bool
    })
}
variable "application_owner" {
    type = string
    sensitive = true
}