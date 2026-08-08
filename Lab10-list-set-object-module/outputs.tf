output "regions_list" {
    value = var.regions 
}
output "first_region" {
    value = var.regions[0]
}
/* output "third_region" {
    value = var.regions[2]
} */
output "environments_set" {
    value = var.environments
}
output "environment_regions" {
    value = var.environment_regions
}
output "prod_env_region" {
    value = var.environment_regions["prod"]
}
output "application_name" {
    value = var.application["name"]
}
output "instance_count" {
    value = var.application["instance_count"]
}
output "application_info" {
    value = var.application
}
output "instance_names" {
    value = [for index, instance in random_string.project_suffix : "${var.application.name}-${index}-${instance.result}"]
}
output "env_map_regions" {
    value = {
        for env, instance in random_string.env_map :
        env => "${env}-${instance.result}"
    }
}
output "deployment_status" {
    value = var.application.enabled ? "Deployment is enabled" : "Deployment is disabled"
}
output "deployment_type" {
    value = local.deployment_type
}
output "application_dev_id" {
    value = module.application.application_id
}
output "application_prod_id" {
    value = module.my_app.application_id
}



