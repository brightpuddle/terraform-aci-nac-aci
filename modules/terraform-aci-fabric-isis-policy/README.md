<!-- BEGIN_TF_DOCS -->
# Terraform ACI Fabric ISIS Policy Module

Manages ACI Fabric ISIS Policy

Location in GUI:
`System` » `System Settings` » `ISIS Policy`

## Examples

```hcl
module "aci_fabric_isis_policy" {
  source  = "netascode/nac-aci/aci//modules/terraform-aci-fabric-isis-policy"
  version = ">= 0.8.0"

  redistribute_metric = 60
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
| <a name="input_redistribute_metric"></a> [redistribute\_metric](#input\_redistribute\_metric) | Redistribute metric. Minimum value: 1. Maximum value: 63. | `number` | `63` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `isisDomPol` object. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.isisDomPol](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->