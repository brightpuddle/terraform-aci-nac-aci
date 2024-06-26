<!-- BEGIN_TF_DOCS -->
# Terraform ACI Rogue Endpoint Control Module

Manages ACI Rogue Endpoint Control

Location in GUI:
`System` » `System Settings` » `Endpoint Controls` » `Rogue EP Control`

## Examples

```hcl
module "aci_rogue_endpoint_control" {
  source  = "netascode/nac-aci/aci//modules/terraform-aci-rogue-endpoint-control"
  version = ">= 0.8.0"

  admin_state          = true
  hold_interval        = 2000
  detection_interval   = 120
  detection_multiplier = 10
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
| <a name="input_admin_state"></a> [admin\_state](#input\_admin\_state) | Admin state. | `bool` | `false` | no |
| <a name="input_hold_interval"></a> [hold\_interval](#input\_hold\_interval) | Hold interval. Allowed values: 300-3600. | `number` | `1800` | no |
| <a name="input_detection_interval"></a> [detection\_interval](#input\_detection\_interval) | Detection interval. Allowed values: 30-3600. | `number` | `60` | no |
| <a name="input_detection_multiplier"></a> [detection\_multiplier](#input\_detection\_multiplier) | Detection multiplier. Allowed values: 2-65535. | `number` | `4` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `epControlP` object. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.epControlP](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->