locals {
  asset_id = "${var.department}-${var.location}-${random_string.asset_suffix.result}"
}
