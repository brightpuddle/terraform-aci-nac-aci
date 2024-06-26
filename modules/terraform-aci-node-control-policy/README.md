<!-- BEGIN_TF_DOCS -->
# Terraform ACI Node Control Policy Module

Manages ACI Node Control Policy

Location in GUI:
`Fabric` » `Fabric Policies` » `Policies` » `Monitoring` » `Fabric Node Controls`

## Examples

```hcl
module "aci_node_control_policy" {
  source  = "netascode/nac-aci/aci//modules/terraform-aci-node-control-policy"
  version = ">= 0.8.0"

  name      = "NC1"
  dom       = true
  telemetry = "netflow"
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
| <a name="input_name"></a> [name](#input\_name) | Node control policy name. | `string` | n/a | yes |
| <a name="input_dom"></a> [dom](#input\_dom) | Digital optical monitoring (DOM). | `bool` | `false` | no |
| <a name="input_telemetry"></a> [telemetry](#input\_telemetry) | Telemetry. Choices: `netflow`, `telemetry`, `analytics`. | `string` | `"telemetry"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fabricNodeControl` object. |
| <a name="output_name"></a> [name](#output\_name) | Node control policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.fabricNodeControl](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->