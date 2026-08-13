resource "aws_gamelift_alias" "gamelift_aliases" {
  for_each = var.gamelift_aliases

  name        = each.value.name
  description = each.value.description
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  routing_strategy {
    fleet_id = each.value.routing_strategy.fleet_id
    message  = each.value.routing_strategy.message
    type     = each.value.routing_strategy.type
  }
}

