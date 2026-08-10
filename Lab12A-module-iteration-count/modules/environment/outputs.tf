output "deployment_name" {
    value = "${var.application_name}-${var.environment}-${var.region}-${random_string.deployment.result}"
}
