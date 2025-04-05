/*
 * # wanted-cloud/terraform-azure-resource-provider-registration
 * 
 * Simple building block module for Azure Resource Provider Registration.
 */

resource "azurerm_resource_provider_registration" "this" {
  name = var.resource_provider_registration_name

  dynamic "feature" {
    for_each = var.features

    content {
      name       = feature.value.name
      registered = feature.value.registered
    }
  }

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_resource_provider_registration"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_resource_provider_registration"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_resource_provider_registration"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_resource_provider_registration"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}