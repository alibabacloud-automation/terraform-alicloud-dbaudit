阿里云数据库审计 Terraform 模块

# terraform-alicloud-dbaudit

[English](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/blob/main/README.md) | 简体中文

在阿里云上创建数据库审计实例的 Terraform 模块。数据库审计是一种安全解决方案，提供数据库审计功能来监控和跟踪数据库活动。它通过记录所有数据库访问和操作，帮助组织遵循安全法规并保护敏感数据。

## 使用方法

创建一个基本的数据库审计实例：

```terraform
module "dbaudit" {
  source = "alibabacloud-automation/dbaudit/alicloud"

  create_dbaudit_instance = true

  dbaudit_instance_config = {
    description = "my-dbaudit-instance"
    plan_code   = "alpha.professional"
    period      = "1"
    vswitch_id  = "vsw-xxxxxxxxxxxxx"
  }

  tags = {
    Name        = "my-dbaudit"
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}
```

## 示例

* [完整示例](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.62.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.62.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_yundun_dbaudit_instance.dbaudit_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/yundun_dbaudit_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_dbaudit_instance"></a> [create\_dbaudit\_instance](#input\_create\_dbaudit\_instance) | Whether to create a new Cloud DBAudit instance. If false, an existing instance ID must be provided. | `bool` | `true` | no |
| <a name="input_dbaudit_instance_config"></a> [dbaudit\_instance\_config](#input\_dbaudit\_instance\_config) | The parameters of Cloud DBAudit instance. The attributes 'description', 'plan\_code', 'period', and 'vswitch\_id' are required. | <pre>object({<br/>    description       = string<br/>    plan_code         = string<br/>    period            = string<br/>    vswitch_id        = string<br/>    resource_group_id = optional(string, null)<br/>  })</pre> | <pre>{<br/>  "description": null,<br/>  "period": null,<br/>  "plan_code": null,<br/>  "vswitch_id": null<br/>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the Cloud DBAudit instance. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dbaudit_instance_description"></a> [dbaudit\_instance\_description](#output\_dbaudit\_instance\_description) | The description of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_id"></a> [dbaudit\_instance\_id](#output\_dbaudit\_instance\_id) | The ID of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_plan_code"></a> [dbaudit\_instance\_plan\_code](#output\_dbaudit\_instance\_plan\_code) | The plan code of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_vswitch_id"></a> [dbaudit\_instance\_vswitch\_id](#output\_dbaudit\_instance\_vswitch\_id) | The VSwitch ID configured for the Cloud DBAudit instance. |
<!-- END_TF_DOCS -->

## 提交问题

如果您在使用此模块时遇到任何问题，请提交一个 [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) 并告知我们。

**注意：** 不建议在此仓库中提交问题。

## 作者

由阿里云 Terraform 团队创建和维护(terraform@alibabacloud.com)。

## 许可证

MIT 许可。有关完整详细信息，请参阅 LICENSE。

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)