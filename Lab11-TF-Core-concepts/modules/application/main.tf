resource "random_string" "module_suffix" {
    length = 6
    count = var.instance_count
}