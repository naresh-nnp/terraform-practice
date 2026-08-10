/* output "dev_env" {
    value = module.deployment.deployment_name
} */
output "deployment_names" {
  value = module.deployment[*].deployment_name
}