locals {
  project_id = "${var.project_name}-${var.environment}-${random_string.project_suffix.result}"
}
