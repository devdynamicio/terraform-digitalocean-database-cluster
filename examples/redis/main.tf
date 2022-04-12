module "do_redis" {
  source           = "../../"
  name             = "do-redis"
  engine           = "redis"
  database_version = 6
  region           = "fra1"
  node_count       = 1
  tags             = ["terraform"]
}

provider "digitalocean" {
}
