output "application_identifier" {
    value = "${var.application_name}-${var.environment}-${var.region}-${random_string.application.result}"
}
output "environment" {
    value = var.environment
}
output "region" {
    value = var.region
}
output "min_node_count" {
    value = var.min_node_count
}
output "max_node_count" {
    value = var.max_node_count
}