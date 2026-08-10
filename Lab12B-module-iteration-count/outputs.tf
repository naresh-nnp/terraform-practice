output "application_identifiers" {
    value = module.app_envs[*].application_identifier
}