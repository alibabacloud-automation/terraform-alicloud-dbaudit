output "dbaudit_instance_id" {
  description = "The ID of the Cloud DBAudit instance."
  value       = module.dbaudit.dbaudit_instance_id
}

output "dbaudit_instance_description" {
  description = "The description of the Cloud DBAudit instance."
  value       = module.dbaudit.dbaudit_instance_description
}

output "dbaudit_instance_plan_code" {
  description = "The plan code of the Cloud DBAudit instance."
  value       = module.dbaudit.dbaudit_instance_plan_code
}

output "dbaudit_instance_vswitch_id" {
  description = "The VSwitch ID configured for the Cloud DBAudit instance."
  value       = module.dbaudit.dbaudit_instance_vswitch_id
}