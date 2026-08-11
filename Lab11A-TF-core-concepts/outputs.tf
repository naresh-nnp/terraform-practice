output "application_random_string" {
    value = random_string.application.result
}
output "application_identifier" {
    value = "${local.application_prefix}-${random_string.application.result}"
}
output "application_full_identifier" {
    value = "${local.application_prefix}-${random_string.application.result}-${random_string.suffix.result}"
}
output "secret_value" {
    value = var.secret_value
    sensitive = true
}
output "environments" {
    value = var.environments
}
output "environment_regions" {
    value = var.environment_regions
}
output "test_env" {
    value = var.environments[1]
}
output "test_env_region" {
    value = var.environment_regions["test"]
}