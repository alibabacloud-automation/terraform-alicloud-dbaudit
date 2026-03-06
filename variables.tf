variable "create_dbaudit_instance" {
  description = "Whether to create a new Cloud DBAudit instance. If false, an existing instance ID must be provided."
  type        = bool
  default     = true
}

variable "dbaudit_instance_config" {
  description = "The parameters of Cloud DBAudit instance. The attributes 'description', 'plan_code', 'period', and 'vswitch_id' are required."
  type = object({
    description       = string
    plan_code         = string
    period            = string
    vswitch_id        = string
    resource_group_id = optional(string, null)
  })
  default = {
    description = null
    plan_code   = null
    period      = null
    vswitch_id  = null
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the Cloud DBAudit instance."
  type        = map(string)
  default     = {}
}