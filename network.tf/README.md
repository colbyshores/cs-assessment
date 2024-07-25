<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_service_networking_connection.private_vpc_connection](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_networking_connection) | resource |
| [google_compute_global_address.private_ip_address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_router.nat_router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat_config](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.private_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.public_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | name of the customer account | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | name of the GCP project | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | region for which resources are deployed to | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gc_network_vpc_network_id"></a> [gc\_network\_vpc\_network\_id](#output\_gc\_network\_vpc\_network\_id) | n/a |
| <a name="output_gc_network_vpc_network_name"></a> [gc\_network\_vpc\_network\_name](#output\_gc\_network\_vpc\_network\_name) | n/a |
| <a name="output_gc_subnetwork_private_subnet_id"></a> [gc\_subnetwork\_private\_subnet\_id](#output\_gc\_subnetwork\_private\_subnet\_id) | n/a |
| <a name="output_gc_subnetwork_public_subnet_id"></a> [gc\_subnetwork\_public\_subnet\_id](#output\_gc\_subnetwork\_public\_subnet\_id) | n/a |
<!-- END_TF_DOCS -->