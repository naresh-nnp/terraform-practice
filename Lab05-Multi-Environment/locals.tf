locals {
  deployment_name = "${var.application_name}-${var.environment}-${random_string.deployment_suffix.result}"
}
locals {
  min_instance_count = 5
  max_instance_count = 9
}
