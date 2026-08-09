output "application_name" {
    value = var.application_name
}
output "environment" {
    value = var.environment
}
output "generated_instance_ids" {
    value = [
        for index, instance_id in random_string.module_suffix : "${index}-${instance_id.result}"
    ]
}
output "instance_count" {
    value = var.instance_count
}