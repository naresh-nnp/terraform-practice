locals {
    project_name = "${var.application_name}-${var.environment}"
}
locals {
    name_prefix = "${var.owner}-${local.project_name}"
}
locals {
    length = 4
}
locals {
    app_env_owner_instance = "${local.project_name}-${var.owner}"
}