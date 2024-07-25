<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_sql_database.db](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database) | resource |
| [google_sql_database_instance.db_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_tier"></a> [db\_tier](#input\_db\_tier) | tier of the database engine | `string` | `""` | no |
| <a name="input_gcn_vpc_network_id"></a> [gcn\_vpc\_network\_id](#input\_gcn\_vpc\_network\_id) | vpc network for with the database is deployed in to | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | name of the customer account | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | name of the GCP project | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | region for which resources are deployed to | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->