output "deployment_information" {
  value = "Deployment Name: ${local.deployment_name}"
}
output "deployment_status" {
  value = "Deployment completed successfully"
}
output "application_owner" {
  value     = var.owner_name
  sensitive = true
}
output "instance_count" {
  value = var.instance_count
}
output "deployment_enabled" {
  value = var.enabled
}
output "regions_list" {
  value = var.regions
}
output "Primary_region" {
  value = var.regions[0]
}
output "region_instance_count" {
  value = var.region_instance_count
}
output "primary_region_instance_count" {
  value = var.region_instance_count["eastus"]
}
output "secondary_region_instance_count" {
  value = var.region_instance_count[var.regions[1]] #passing list element as key to map
}
output "region_set" {
  value = var.region_set
}
output "sku_settings" {
  value = var.sku_settings
}
output "sku_name" {
  value = var.sku_settings.sku_name
}
