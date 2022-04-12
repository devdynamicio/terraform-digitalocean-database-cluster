output "id" {
  value       = digitalocean_database_cluster.this.id
  description = "The ID of the database cluster."
}

output "urn" {
  value       = digitalocean_database_cluster.this.urn
  description = "The uniform resource name of the database cluster."
}

output "host" {
  value       = digitalocean_database_cluster.this.host
  description = "Database cluster's hostname."
}

output "private_host" {
  value       = digitalocean_database_cluster.this.private_host
  description = "Same as host, but only accessible from resources within the account and in the same region."
}

output "port" {
  value       = digitalocean_database_cluster.this.port
  description = "Network port that the database cluster is listening on."
}

output "uri" {
  value       = digitalocean_database_cluster.this.uri
  description = "The full URI for connecting to the database cluster."
  sensitive   = true
}

output "private_uri" {
  value       = digitalocean_database_cluster.this.private_uri
  description = "Same as uri, but only accessible from resources within the account and in the same region."
  sensitive   = true
}

output "database" {
  value       = digitalocean_database_cluster.this.database
  description = "Name of the cluster's default database."
}

output "user" {
  value       = digitalocean_database_cluster.this.user
  description = "Username for the cluster's default user."
}

output "password" {
  value       = digitalocean_database_cluster.this.password
  description = "Password for the cluster's default user."
  sensitive   = true
}
