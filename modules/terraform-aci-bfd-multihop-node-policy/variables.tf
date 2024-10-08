variable "tenant" {
  description = "Tenant name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.:-]{0,64}$", var.tenant))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `:`, `-`. Maximum characters: 64."
  }
}
variable "name" {
  description = "BFD Multihop Node policy name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.:-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `:`, `-`. Maximum characters: 64."
  }
}

variable "description" {
  description = "Description."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9\\\\!#$%()*,-./:;@ _{|}~?&+]{0,128}$", var.description))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `\\`, `!`, `#`, `$`, `%`, `(`, `)`, `*`, `,`, `-`, `.`, `/`, `:`, `;`, `@`, ` `, `_`, `{`, `|`, }`, `~`, `?`, `&`, `+`. Maximum characters: 128."
  }
}

variable "detection_multiplier" {
  description = "Detection multiplier. Minimum value: 1. Maximum value: 50."
  type        = number
  default     = 3

  validation {
    condition     = var.detection_multiplier >= 1 && var.detection_multiplier <= 50
    error_message = "Minimum value: 1. Maximum value: 50."
  }
}

variable "min_rx_interval" {
  description = "Min RX interval. Minimum value: 50. Maximum value: 999."
  type        = number
  default     = 250

  validation {
    condition     = var.min_rx_interval >= 250 && var.min_rx_interval <= 999
    error_message = "Minimum value: 250. Maximum value: 999."
  }
}

variable "min_tx_interval" {
  description = "Min TX interval. Minimum value: 50. Maximum value: 999."
  type        = number
  default     = 250

  validation {
    condition     = var.min_tx_interval >= 250 && var.min_tx_interval <= 999
    error_message = "Minimum value: 250. Maximum value: 999."
  }
}
