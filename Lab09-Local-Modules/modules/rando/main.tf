resource "random_string" "suffix" {
    length = var.length
    upper = false
    special = false
}