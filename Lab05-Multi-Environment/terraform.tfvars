application_name = "inventory"
environment      = "default"
owner_name       = "Alice"
instance_count   = 9
enabled          = true
regions          = ["eastus", "westus"]
region_instance_count = {
  eastus = 2
  westus = 4
}
region_set = ["eastus", "westus"]
sku_settings = {
  sku_name     = "Production"
  sku_tier     = "standard"
  sku_capacity = 2
}
