<!-- BEGIN_TF_DOCS -->
# Terraform ACI Fabric L2 MTU Module

Manage Fabric L2 MTU

Location in GUI:
`Fabric` » `Fabric Policies` » `Policies` » `Global` » `Fabric L2 MTU`

## Examples

```hcl
module "aci_fabric_l2_mtu" {
  source  = "netascode/nac-aci/aci//modules/terraform-aci-fabric-l2-mtu"
  version = ">= 0.8.0"

  l2_port_mtu = 9216
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
| <a name="input_l2_port_mtu"></a> [l2\_port\_mtu](#input\_l2\_port\_mtu) | Fabric L2 MTU. Minimum value: `576`. Maximum value: `9216`. | `number` | `9000` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `l2InstPol` object. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.l2InstPol](https://registry.terraform.io/providers/brightpuddle/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->