<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azure-resource-provider-registration

Simple building block module for Azure Resource Provider Registration.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Required Inputs

The following input variables are required:

### <a name="input_resource_provider_registration_name"></a> [resource\_provider\_registration\_name](#input\_resource\_provider\_registration\_name)

Description: The name of the resource provider registration.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_features"></a> [features](#input\_features)

Description: The features to be enabled for the resource provider registration.

Type:

```hcl
list(object({
    name       = string
    registered = optional(bool, true)
  }))
```

Default: `{}`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(object({
      create = optional(string, "30m")
      read   = optional(string, "5m")
      update = optional(string, "30m")
      delete = optional(string, "30m")
    }), {})
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_resource_provider_registration"></a> [resource\_provider\_registration](#output\_resource\_provider\_registration)

Description: n/a

## Resources

The following resources are used by this module:

- [azurerm_resource_provider_registration.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_provider_registration) (resource)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/resource-provider-registration/azure"
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."

    resource_provider_registration_name = "Microsoft.Compute"
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->