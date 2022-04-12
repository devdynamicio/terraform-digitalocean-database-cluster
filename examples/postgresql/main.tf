module "do_postgres" {
  source           = "../../"
  name             = "do-postgres"
  engine           = "pg"
  database_version = 11
  region           = "fra1"
  node_count       = 1
}

provider "digitalocean" {
}
