output "dbaudit_instance_id" {
  description = "The ID of the Cloud DBAudit instance."
  value       = var.create_dbaudit_instance ? alicloud_yundun_dbaudit_instance.dbaudit_instance[0].id : null
}

output "dbaudit_instance_description" {
  description = "The description of the Cloud DBAudit instance."
  value       = var.create_dbaudit_instance ? alicloud_yundun_dbaudit_instance.dbaudit_instance[0].description : null
}

output "dbaudit_instance_plan_code" {
  description = "The plan code of the Cloud DBAudit instance."
  value       = var.create_dbaudit_instance ? alicloud_yundun_dbaudit_instance.dbaudit_instance[0].plan_code : null
}

output "dbaudit_instance_vswitch_id" {
  description = "The VSwitch ID configured for the Cloud DBAudit instance."
  value       = var.create_dbaudit_instance ? alicloud_yundun_dbaudit_instance.dbaudit_instance[0].vswitch_id : null
}