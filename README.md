Alibaba Cloud DBAudit Terraform Module

# terraform-alicloud-dbaudit

English | [简体中文](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/blob/main/README-CN.md)

Terraform module which creates Cloud DBAudit instance on Alibaba Cloud. Cloud DBAudit is a security solution that provides database audit capabilities to monitor and track database activities. It helps organizations comply with security regulations and protect sensitive data by recording all database access and operations. For more information about Cloud DBAudit, see [Cloud DBAudit](https://www.alibabacloud.com/product/database-audit).

## Usage

To create a basic Cloud DBAudit instance:

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

## Examples

* [Complete Example](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)