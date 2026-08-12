output "application_random_string" {
    value = random_string.application[*].result
}
/* output "application_identifier" {
    value = "${local.application_prefix}-${random_string.application[*].result}"
}
output "application_full_identifier" {
    value = "${local.application_prefix}-${random_string.application[*].result}-${random_string.suffix.result}"
} */
output "application_identifier" {
    value = [
            for env, app_identity in random_string.application :
            "${local.application_prefix}-${var.environments[env]}-${app_identity.result}"
        ] 
}
output "application_full_identifier" {
    value = [
        for env, app_full_id in random_string.application :
        "${local.application_prefix}-${var.environments[env]}-${app_full_id.result}-${random_string.suffix.result}"
    ]
}
output "env_regions_list_output" {
    value = [
        for env, env_region_string in random_string.env_regions :
        "${env}-${var.environment_regions[env]}-${env_region_string.result}"
    ]
}
output "env_regions_map_output" {
    value = {
        for env, env_region in random_string.env_regions :
        env => "${var.environment_regions[env]}-${env_region.result}"
    }
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
output "suffix_length" {
    value = local.suffix_length
}