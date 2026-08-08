locals {
    length = 4
}
locals {
    deployment_type = var.application.enabled && var.application.instance_count > 0 ? "active" : "inactive"
}

