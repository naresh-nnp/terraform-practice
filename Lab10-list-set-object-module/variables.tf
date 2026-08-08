variable "regions" {
    type = list(string)
}
variable "environments" {
    type = set(string)
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
