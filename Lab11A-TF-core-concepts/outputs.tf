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
/* output "module_app_m1" {
    value = "${module.application.application_identifier}"
} */
output "module_env_objects" {
    value = [
        for stamp in module.application_stamps :
        stamp.application_identifier

    ]
}
output "module_env_stamps_list" {
    value = [
        for stamp in module.application_stamps : {
            environment = stamp.environment
            region = stamp.region
            min_node_count = stamp.min_node_count
            max_node_count = stamp.max_node_count
        }
    ]
}

output "module_app_env_regions_v1" {
    value = {
        for key, stamp in module.application_regions_module :
            key => stamp.application_identifier
    }
}

output "module_app_env_regions_v2" {
    value = {
        for key, stamp in module.application_regions_module :
            key => {
                environment = stamp.environment
                region = stamp.region
                identifier = stamp.application_identifier
            }
    }
}