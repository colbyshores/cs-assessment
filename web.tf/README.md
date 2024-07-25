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
| [google_compute_instance.vm_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | name of the gcp image | `string` | `"rocky-linux-cloud/rocky-linux-9-optimized-gcp"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | machine instance type being deployed | `string` | `"n1-standard-1"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | name of the customer account | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | name of the GCP project | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | region for which resources are deployed to | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet for instance deployment(generally public) | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->