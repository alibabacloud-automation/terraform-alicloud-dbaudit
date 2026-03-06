# Complete Example

This example shows how to use the terraform-alicloud-dbaudit module to create a Cloud DBAudit instance.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dbaudit"></a> [dbaudit](#module\_dbaudit) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [alicloud_vswitches.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/vswitches) | data source |
| [alicloud_vpcs.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/vpcs) | data source |
| [alicloud_zones.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the Cloud DBAudit instance. | `string` | `"tf-example-dbaudit-instance"` | no |
| <a name="input_period"></a> [period](#input\_period) | Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. | `string` | `"1"` | no |
| <a name="input_plan_code"></a> [plan\_code](#input\_plan\_code) | Plan code of the Cloud DBAudit instance. Valid values: alpha.professional, alpha.basic, alpha.premium. | `string` | `"alpha.professional"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region where the Cloud DBAudit instance will be created. | `string` | `"cn-hangzhou"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dbaudit_instance_description"></a> [dbaudit\_instance\_description](#output\_dbaudit\_instance\_description) | The description of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_id"></a> [dbaudit\_instance\_id](#output\_dbaudit\_instance\_id) | The ID of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_plan_code"></a> [dbaudit\_instance\_plan\_code](#output\_dbaudit\_instance\_plan\_code) | The plan code of the Cloud DBAudit instance. |
| <a name="output_dbaudit_instance_vswitch_id"></a> [dbaudit\_instance\_vswitch\_id](#output\_dbaudit\_instance\_vswitch\_id) | The VSwitch ID configured for the Cloud DBAudit instance. |