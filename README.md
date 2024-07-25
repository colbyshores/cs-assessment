<!-- BEGIN_TF_DOCS -->
## NOTES

To deploy the resources type in:
terraform apply --var-file=config/testcustomer-europe-west6.tfvars

To destroy the resources type in:
terraform destroy --var-file=config/testcustomer-europe-west6.tfvars

This command would generally be wrapped with vars in a pipeline with
drop down options where MODE would have options for apply,destroy,plan.
NAMESPACE would be the customer's name and REGION would be the region
deploying in to

terraform ${MODE} --var-file=config/${NAMESPACE}-${REGION}.tfvars

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.38.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | ~>4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_database"></a> [database](#module\_database) | ./database.tf | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./network.tf | n/a |
| <a name="module_security"></a> [security](#module\_security) | ./security.tf | n/a |
| <a name="module_web"></a> [web](#module\_web) | ./web.tf | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_tier"></a> [db\_tier](#input\_db\_tier) | machine size for database | `string` | `"db-f1-micro"` | no |
| <a name="input_gc_image"></a> [gc\_image](#input\_gc\_image) | the name of the linux image to bootstrap the GC instance | `string` | `"rocky-linux-cloud/rocky-linux-9-optimized-gcp"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | machine type for instance | `string` | `"n1-standard-1"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | name of the customer account | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | name of the GCP project | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | region for which resources are deployed to | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
