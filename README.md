# terraform-gcp-vpc
# Terraform Google Cloud VPC Module

This Terraform module provisions a Google Cloud VPC with customizable options.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [License](#license)

## Introduction
This Terraform module creates an GCP Virtual Private Cloud (VPC) along with additional configuration options.

## Usage

Include the module configuration in your main.tf file, specifying the required variables:
## Example: vpc
```hcl
module "vpc" {
  source                                    = "git::https://github.com/cypik/terraform-gcp-vpc.git?ref=v1.0.0"
  name                                      = "app"
  environment                               = "test"
  routing_mode                              = "REGIONAL"
  mtu                                       = 1500
  delete_default_routes_on_create           = true
  enable_ula_internal_ipv6                  = false
  internal_ipv6_range                       = null
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}
```
Replace the 'source' attribute with the actual path to the module in your project.

## Module Inputs
This module supports the following input variables:

- 'name': The name of the VPC.
- 'environment': The environment for the VPC.
- 'routing_mode': The routing mode for the VPC (e.g., "REGIONAL").
- 'mtu': The Maximum Transmission Unit (MTU) for the VPC.
- 'delete_default_routes_on_create': Whether to delete default routes on VPC creation.
- 'enable_ula_internal_ipv6': Enable ULA internal IPv6.
- 'internal_ipv6_range': Internal IPv6 range for the VPC (can be set to null).
- 'network_firewall_policy_enforcement_order': The enforcement order for network firewall policies.

## Module Outputs
This module provides the following outputs:

- 'vpc_name': The name of the created VPC.

## Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/cypik/terraform-gcp-vpc/blob/master/LICENSE) file for more details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
