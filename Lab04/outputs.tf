output "asset_registration" {
  value = "asset registered successfully"
}
output "asset_information" {
  value = "Asset ID: ${local.asset_id}"
}
output "asset_model" {
  value = "Asset Model: ${var.model}"
}
output "asset_os" {
  value = "Asset OS: ${var.os}"
}
output "asset_env" {
  value = "Asset environment: ${var.env}"
}
output "asset_api_key" {
  value     = "Asset API key: ${var.api_key}"
  sensitive = true
}
