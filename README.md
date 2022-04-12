# Digitalocean Database cluster Terraform module

Terraform Module for create [DigitalOcean Database](https://www.digitalocean.com/products/managed-databases) service.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Examples

```hcl
module "do_redis" {
  source           = "../../"
  name             = "do-redis"
  engine           = "redis"
  database_version = 6
  region           = "fra1"
  node_count       = 1
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.19.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_database_cluster.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | Engine version used by the cluster (ex. 11 for PostgreSQL 11). | `number` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Database engine used by the cluster (ex. pg for PostreSQL, mysql for MySQL, redis for Redis, or mongodb for MongoDB). | `string` | n/a | yes |
| <a name="input_eviction_policy"></a> [eviction\_policy](#input\_eviction\_policy) | A string specifying the eviction policy for a Redis cluster. Valid values are: noeviction, allkeys\_lru, allkeys\_random, volatile\_lru, volatile\_random, or volatile\_ttl. | `string` | `null` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Defines when the automatic maintenance should be performed for the database cluster. | <pre>object({<br>    day  = string<br>    hour = string<br>  })</pre> | <pre>{<br>  "day": "tuesday",<br>  "hour": "01:00:00"<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the database cluster. | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of nodes that will be included in the cluster. | `number` | n/a | yes |
| <a name="input_private_network_uuid"></a> [private\_network\_uuid](#input\_private\_network\_uuid) | The ID of the VPC where the database cluster will be located. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | DigitalOcean region where the cluster will reside. | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Database Droplet size associated with the cluster (ex. db-s-1vcpu-1gb). | `string` | `"db-s-1vcpu-1gb"` | no |
| <a name="input_sql_mode"></a> [sql\_mode](#input\_sql\_mode) | A comma separated string specifying the SQL modes for a MySQL cluster. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of tag names to be applied to the database cluster. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database"></a> [database](#output\_database) | Name of the cluster's default database. |
| <a name="output_host"></a> [host](#output\_host) | Database cluster's hostname. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the database cluster. |
| <a name="output_password"></a> [password](#output\_password) | Password for the cluster's default user. |
| <a name="output_port"></a> [port](#output\_port) | Network port that the database cluster is listening on. |
| <a name="output_private_host"></a> [private\_host](#output\_private\_host) | Same as host, but only accessible from resources within the account and in the same region. |
| <a name="output_private_uri"></a> [private\_uri](#output\_private\_uri) | Same as uri, but only accessible from resources within the account and in the same region. |
| <a name="output_uri"></a> [uri](#output\_uri) | The full URI for connecting to the database cluster. |
| <a name="output_urn"></a> [urn](#output\_urn) | The uniform resource name of the database cluster. |
| <a name="output_user"></a> [user](#output\_user) | Username for the cluster's default user. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
