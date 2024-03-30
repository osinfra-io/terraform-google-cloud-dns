# Terraform Documentation

A child module automatically inherits its parent's default (un-aliased) provider configurations. The provider versions below are informational only and do **not** need to align with the provider configurations from its parent.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_dns_managed_zone.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_managed_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A textual description field. Defaults to 'Managed by Terraform' | `string` | `null` | no |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | The DNS name of this managed zone, for instance 'example.com.' (must end with a period) | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | A map of key/value pairs to assign to the resources being created | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | User assigned name for this resource. Must be unique within the project | `string` | n/a | yes |
| <a name="input_private_visibility_config_networks"></a> [private\_visibility\_config\_networks](#input\_private\_visibility\_config\_networks) | For privately visible zones, the set of Virtual Private Cloud network resources that the zone is visible from | `list(string)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | The ID of the project in which the resource belongs | `string` | n/a | yes |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | The DNS zone domain name |
| <a name="output_name"></a> [name](#output\_name) | The DNS zone name |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The DNS zone name servers |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
