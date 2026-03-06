Alibaba Cloud DBAudit Terraform Module

# terraform-alicloud-dbaudit

English | [简体中文](https://github.com/alibabacloud-automation/terraform-alicloud-dbaudit/blob/main/README-CN.md)

Terraform module which creates Cloud DBAudit instance on Alibaba Cloud. Cloud DBAudit is a security solution that provides database audit capabilities to monitor and track database activities. It helps organizations comply with security regulations and protect sensitive data by recording all database access and operations. 

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