
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aci = {
      source  = "brightpuddle/aci"
      version = ">= 2.6.0"
    }
  }
}
