locals {
    deployment_name = "${var.application_name}-${var.environment}-${random_string.deployment_id.result}"
}