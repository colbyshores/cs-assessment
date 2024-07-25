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
| [google_compute_firewall.allow_all_egress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_private](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_public_ingress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gcn_vpc_network_name"></a> [gcn\_vpc\_network\_name](#input\_gcn\_vpc\_network\_name) | name of the vpc network that is being secured | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | name of the customer account | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | name of the GCP project | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | region for which resources are deployed to | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->