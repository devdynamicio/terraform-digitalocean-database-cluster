variable "name" {
  description = "The name of the database cluster."
  type        = string
}

variable "engine" {
  description = "Database engine used by the cluster (ex. pg for PostreSQL, mysql for MySQL, redis for Redis, or mongodb for MongoDB)."
  type        = string
}

variable "size" {
  description = "Database Droplet size associated with the cluster (ex. db-s-1vcpu-1gb)."
  default     = "db-s-1vcpu-1gb"
  type        = string
}

variable "region" {
  description = "DigitalOcean region where the cluster will reside."
  type        = string
}

variable "database_version" {
  description = "Engine version used by the cluster (ex. 11 for PostgreSQL 11)."
  type        = number
}

variable "eviction_policy" {
  type        = string
  description = "A string specifying the eviction policy for a Redis cluster. Valid values are: noeviction, allkeys_lru, allkeys_random, volatile_lru, volatile_random, or volatile_ttl."
  default     = null
}

variable "sql_mode" {
  type        = string
  description = "A comma separated string specifying the SQL modes for a MySQL cluster."
  default     = null
}

variable "node_count" {
  description = "Number of nodes that will be included in the cluster."
  type        = number
}

variable "private_network_uuid" {
  type        = string
  description = "The ID of the VPC where the database cluster will be located."
  default     = null
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "A list of tag names to be applied to the database cluster."
}

variable "maintenance_window" {
  description = "Defines when the automatic maintenance should be performed for the database cluster."
  type = object({
    day  = string
    hour = string
  })
  default = {
    day  = "tuesday"
    hour = "01:00:00"
  }
}
