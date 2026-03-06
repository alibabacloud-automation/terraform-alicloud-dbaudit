# Cloud DBAudit Instance
resource "alicloud_yundun_dbaudit_instance" "dbaudit_instance" {
  count             = var.create_dbaudit_instance ? 1 : 0
  description       = var.dbaudit_instance_config.description
  plan_code         = var.dbaudit_instance_config.plan_code
  period            = var.dbaudit_instance_config.period
  vswitch_id        = var.dbaudit_instance_config.vswitch_id
  tags              = var.tags
  resource_group_id = var.dbaudit_instance_config.resource_group_id
}
