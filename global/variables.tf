variable "description" {
  description = "A textual description field. Defaults to 'Managed by Terraform'"
  type        = string
  default     = null
}

variable "dns_name" {
  description = "The DNS name of this managed zone, for instance 'example.com.' (must end with a period)"
  type        = string
}

variable "labels" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
  default     = {}
}

variable "name" {
  description = "User assigned name for this resource. Must be unique within the project"
  type        = string
}

variable "private_visibility_config_networks" {
  description = "For privately visible zones, the set of Virtual Private Cloud network resources that the zone is visible from"
  type        = list(string)
  default     = []
}

variable "project" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "visibility" {
  description = "The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources"
  type        = string
}
