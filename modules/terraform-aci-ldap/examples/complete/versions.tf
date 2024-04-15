
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aci = {
      source  = "brightpuddle/aci"
      version = ">= 2.0.0"
    }
  }
}
