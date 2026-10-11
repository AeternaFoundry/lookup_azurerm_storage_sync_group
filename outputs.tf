output "storage_sync_group_lookup_id" {
  description = "Map of id values across all storage_sync_group_lookup, keyed the same as var.storage_sync_group_lookup"
  value       = { for k, v in data.azurerm_storage_sync_group.storage_sync_group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_sync_group_lookup_name" {
  description = "Map of name values across all storage_sync_group_lookup, keyed the same as var.storage_sync_group_lookup"
  value       = { for k, v in data.azurerm_storage_sync_group.storage_sync_group_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_sync_group_lookup_storage_sync_id" {
  description = "Map of storage_sync_id values across all storage_sync_group_lookup, keyed the same as var.storage_sync_group_lookup"
  value       = { for k, v in data.azurerm_storage_sync_group.storage_sync_group_lookup : k => v.storage_sync_id if v.storage_sync_id != null && length(v.storage_sync_id) > 0 }
}

