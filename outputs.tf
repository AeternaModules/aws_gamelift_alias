output "gamelift_aliases_id" {
  description = "Map of id values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gamelift_aliases_arn" {
  description = "Map of arn values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "gamelift_aliases_description" {
  description = "Map of description values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.description if v.description != null && length(v.description) > 0 }
}
output "gamelift_aliases_name" {
  description = "Map of name values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gamelift_aliases_region" {
  description = "Map of region values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "gamelift_aliases_routing_strategy" {
  description = "Map of routing_strategy values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.routing_strategy if v.routing_strategy != null && length(v.routing_strategy) > 0 }
}
output "gamelift_aliases_tags" {
  description = "Map of tags values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "gamelift_aliases_tags_all" {
  description = "Map of tags_all values across all gamelift_aliases, keyed the same as var.gamelift_aliases"
  value       = { for k, v in aws_gamelift_alias.gamelift_aliases : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

