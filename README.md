# terraform-gcp-vpc
# Terraform Google Cloud VPC Module

This Terraform module provisions a Google Cloud VPC with customizable options.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Examples](#Examples)
- [License](#License)
- [Author](#Author)

  
## Prerequisites

Before you begin using this module, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- Appropriate Google Cloud credentials configured.

## Usage

To use this module, follow these steps:

1. Clone the repository containing this module:

   ```bash
   git clone https://github.com/your-repo.git
1. Create a new Terraform configuration file (e.g., 'main.tf') in your project directory.

2. Include the Google Cloud provider configuration at the top of your 'main.tf' file:

```hcl
provider "google" {
  project = "your-project-id"
  region  = "your-region"
  zone    = "your-zone"
}
```
Make sure to replace 'your-project-id', 'your-region', and 'your-zone' with your actual Google Cloud project and region settings.

3. Include the module configuration in your main.tf file, specifying the required variables:

```hcl
module "vpc" {
  source                                    = "./path/to/module"
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

4. Initialize the working directory:

```bash
terraform init
```
5. Create a Terraform plan and apply the changes:

```bash
terraform plan
terraform apply
```
6. Confirm the changes and the resources that will be created, and enter yes to apply the changes.

7. Once the apply is complete, your Google Cloud VPC will be provisioned with the specified configurations.

## Inputs
This module supports the following input variables:

- 'name': The name of the VPC.
- 'environment': The environment for the VPC.
- 'routing_mode': The routing mode for the VPC (e.g., "REGIONAL").
- 'mtu': The Maximum Transmission Unit (MTU) for the VPC.
- 'delete_default_routes_on_create': Whether to delete default routes on VPC creation.
- 'enable_ula_internal_ipv6': Enable ULA internal IPv6.
- 'internal_ipv6_range': Internal IPv6 range for the VPC (can be set to null).
- 'network_firewall_policy_enforcement_order': The enforcement order for network firewall policies.
## Outputs
This module provides the following outputs:

- 'vpc_name': The name of the created VPC.
```
javascript

Please note that you should customize the placeholders in the code, such as `you
```
## Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/opz0/terraform-gcp-vpc/blob/readme/LICENSE) file for more details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
