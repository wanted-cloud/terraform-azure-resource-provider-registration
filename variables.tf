variable "resource_provider_registration_name" {
  description = "The name of the resource provider registration."
  type        = string
}

variable "features" {
  description = "The features to be enabled for the resource provider registration."
  type = list(object({
    name       = string
    registered = optional(bool, true)
  }))
  default = []
}