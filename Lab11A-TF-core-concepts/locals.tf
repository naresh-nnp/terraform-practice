locals {
    application_prefix = "${var.application_name}-app"
    suffix_length = var.enable_monitoring ? 6 : 4
}
