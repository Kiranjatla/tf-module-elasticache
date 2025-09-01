resource "aws_elasticache_cluster" "main" {
  cluster_id           = "${var.env}-${var.name}-elasticache"
  engine               = var.engine
  engine_version       = var.engine_version
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = aws_elasticache_parameter_group.default.name
}