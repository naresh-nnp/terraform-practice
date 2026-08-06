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
