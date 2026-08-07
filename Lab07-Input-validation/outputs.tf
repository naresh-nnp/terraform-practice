output "deployment_name" {
    value = local.deployment_name
}
output "instance_information" {
    value = "Instance Count: ${var.instance_count}"
}
output "backup_status" {
    value = "Backup Enabled: ${var.enable_backup}"
}
output "application_owner" {
    value = var.owner_name
    sensitive = true
}