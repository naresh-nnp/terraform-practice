locals {
  asset_id = "${var.department}-${var.model}-${var.location}-${random_string.asset_suffix.result}"
}
