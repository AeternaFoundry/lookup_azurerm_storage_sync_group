variable "storage_sync_group_lookup" {
  description = <<EOT
Map of storage_sync_group_lookup, attributes below
Required:
    - name
    - storage_sync_id
EOT

  type = map(object({
    name            = string
    storage_sync_id = string
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

