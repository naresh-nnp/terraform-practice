output "application_identifier" {
    value = "${var.application_name}-${var.environment}-${var.region}-${random_string.application_id.result}"
}