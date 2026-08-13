variable "gamelift_aliases" {
  description = <<EOT
Map of gamelift_aliases, attributes below
Required:
    - name
    - routing_strategy (block):
        - fleet_id (optional)
        - message (optional)
        - type (required)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    routing_strategy = object({
      fleet_id = optional(string)
      message  = optional(string)
      type     = string
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

