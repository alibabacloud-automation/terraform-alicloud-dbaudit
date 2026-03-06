阿里云数据库审计 Terraform 模块

# terraform-alicloud-dbaudit

[English](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/blob/main/README.md) | 简体中文

在阿里云上创建数据库审计实例的 Terraform 模块。数据库审计是一种安全解决方案，提供数据库审计功能来监控和跟踪数据库活动。它通过记录所有数据库访问和操作，帮助组织遵循安全法规并保护敏感数据。有关数据库审计的更多信息，请参阅[数据库审计](https://www.alibabacloud.com/product/database-audit)。

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