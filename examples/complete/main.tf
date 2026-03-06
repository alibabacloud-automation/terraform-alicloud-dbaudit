provider "alicloud" {
  region = "cn-hangzhou"
}

# Get available zones
data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

# Get default VPC
data "alicloud_vpcs" "default" {
  name_regex = "^default-NODELETING$"
}

# Get VSwitches
data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids[0]
  zone_id = data.alicloud_zones.default.zones[0].id
}

# Call the DBAudit module
module "dbaudit" {
  source = "../../"

  create_dbaudit_instance = true

  dbaudit_instance_config = {
    description = "tf-example-dbaudit-instance"
    plan_code   = "alpha.professional"
    period      = "1"
    vswitch_id  = data.alicloud_vswitches.default.ids[0]
  }

  tags = {
    Name        = "tf-example-dbaudit"
    Environment = "test"
    ManagedBy   = "Terraform"
  }
}