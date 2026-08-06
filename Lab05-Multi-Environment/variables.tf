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

