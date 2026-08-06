variable "application_name" {
  type = string
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
