variable "application_name" {
  type = string
  validation {
    condition     = length(var.application_name) <= 10
    error_message = "Application Name must be less than or equal to 10 characters"
  }
}
variable "environment" {
  type = string
}
variable "owner_name" {
  type      = string
  sensitive = true
}
variable "instance_count" {
  type = number
  validation {
    condition     = var.instance_count > local.min_instance_count && var.instance_count <= local.max_instance_count && var.instance_count % 2 != 0
    error_message = "Instance count must be between 5 and 9 and must be an odd number"
  }
}
variable "enabled" {
  type = bool
}
variable "regions" {
  type = list(string)
}
variable "region_instance_count" {
  type = map(number)
}
variable "region_set" {
  type = set(string)
}
variable "sku_settings" {
  type = object({
    sku_name     = string
    sku_tier     = string
    sku_capacity = number
  })
}
