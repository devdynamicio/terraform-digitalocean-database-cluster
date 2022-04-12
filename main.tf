resource "digitalocean_database_cluster" "this" {
  name       = var.name
  engine     = var.engine
  version    = var.database_version
  size       = var.size
  region     = var.region
  node_count = var.node_count

  eviction_policy = var.eviction_policy

  sql_mode = var.sql_mode

  private_network_uuid = var.private_network_uuid

  tags = var.tags

  maintenance_window {
    day  = var.maintenance_window.day
    hour = var.maintenance_window.hour
  }
}
