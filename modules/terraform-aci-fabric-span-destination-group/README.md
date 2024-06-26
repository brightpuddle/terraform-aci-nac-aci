<!-- BEGIN_TF_DOCS -->
# Terraform ACI Fabric SPAN Destination Group Module

Manages ACI Fabric SPAN Destination Group

Location in GUI:
`Fabric` » `Fabric Policies` » `Policies` » `Troubleshooting` » `SPAN` » `SPAN Destination Groups`

## Examples

```hcl
module "aci_fabric_span_destination_group" {
  source  = "netascode/nac-aci/aci//modules/terraform-aci-fabric-span-destination-group"
  version = ">= 0.8.0"

  name                = "DST_GRP"
  description         = "My Fabric SPAN Destination Group"
  tenant              = "ABC"
  application_profile = "AP1"
  endpoint_group      = "EPG1"
  ip                  = "1.1.1.1"
  source_prefix       = "1.2.3.4/32"
  dscp                = "CS4"
  flow_id             = 10
  mtu                 = 9000
  ttl                 = 10
  span_version        = 2
  enforce_version     = true
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Fabric SPAN destination group name. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Fabric SPAN destination group description. | `string` | `""` | no |
| <a name="input_ip"></a> [ip](#input\_ip) | Fabric SPAN destination group IP. | `string` | `""` | no |
| <a name="input_source_prefix"></a> [source\_prefix](#input\_source\_prefix) | Fabric SPAN destination group source prefix. | `string` | `""` | no |
| <a name="input_dscp"></a> [dscp](#input\_dscp) | Fabric SPAN destination group DSCP. Allowed values are `unspecified`, `CS0`, `CS1`, `AF11`, `AF12`, `AF13`, `CS2`, `AF21`, `AF22`, `AF23`, `CS3`, `AF31`, `AF32`, `AF33`, `CS4`, `AF41`, `AF42`, `AF43`, `CS5`, `VA`, `EF`, `CS6`, `CS7` or a number between 0 and 63. | `string` | `"unspecified"` | no |
| <a name="input_flow_id"></a> [flow\_id](#input\_flow\_id) | Fabric SPAN destination group flow id. Allowed values: 1-1023. | `number` | `1` | no |
| <a name="input_mtu"></a> [mtu](#input\_mtu) | Fabric SPAN destination group MTU. Allowed values: 64-9216. | `number` | `1518` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Fabric SPAN destination group TTL. Allowed values: 1-255. | `number` | `64` | no |
| <a name="input_span_version"></a> [span\_version](#input\_span\_version) | Fabric SPAN destination group SPAN version. Allowed values: 1-2. | `number` | `1` | no |
| <a name="input_enforce_version"></a> [enforce\_version](#input\_enforce\_version) | Fabric SPAN destination group enforced version flag. | `bool` | `false` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Fabric SPAN destination group tenant name. | `string` | `""` | no |
| <a name="input_application_profile"></a> [application\_profile](#input\_application\_profile) | Fabric SPAN destination group application profile name. | `string` | `""` | no |
| <a name="input_endpoint_group"></a> [endpoint\_group](#input\_endpoint\_group) | Fabric SPAN destination group endpoint group name. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `spanDestGrp` object. |
| <a name="output_name"></a> [name](#output\_name) | Fabric SPAN destination group name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.spanDest](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.spanDestGrp](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.spanRsDestEpg](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->