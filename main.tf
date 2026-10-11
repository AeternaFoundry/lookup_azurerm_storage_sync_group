data "azurerm_storage_sync_group" "storage_sync_group_lookup" {
  for_each = var.storage_sync_group_lookup

  name            = each.value.name
  storage_sync_id = each.value.storage_sync_id
}

