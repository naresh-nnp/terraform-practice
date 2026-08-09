output "project_name" {
    value = "${local.project_name}-${var.owner}"
}
output "application_name" {
    value = var.application_name
}
output "environment" {
    value = var.environment
}
output "deployment_status" {
    value = var.enabled ? "enabled" : "disabled"
}
output "instance_names" {
    value = [for index, randm_value in random_string.count : "Instance-${index}-${randm_value.result}" ]
}
output "regions" {
    value = var.regions
}
output "prod_region" {
    value = var.environment_regions["prod"]
}
output "application_instances" {
    value = [
        for index, count in random_string.count : "${local.app_env_owner_instance}-${index}-${count.result}"
    ]
}
output "environment_regions" {
    value = var.environment_regions
}
output "env_region_instances" {
    value = {
        for key, instance in random_string.env_regions : key => "${var.application_name}-${key}-${var.environment_regions[key]}-${instance.result}"
    }
}
output "application_owner" {
    value = var.application_owner
    sensitive = true
}
output "module_app_name" {
    value = module.application.application_name
}
output "module_env" {
    value = module.application.environment
}
output "module_instance_count" {
    value = module.application.instance_count
}
output "module_instance_ids" {
    value = module.application.generated_instance_ids
}
