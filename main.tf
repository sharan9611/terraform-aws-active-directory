module "labels" {
  source  = "clouddrove/labels/aws"
  version = "1.3.0"

  name        = var.name
  environment = var.environment
  attributes  = var.attributes
  repository  = var.repository
  managedby   = var.managedby
  label_order = var.label_order
}
resource "aws_directory_service_directory" "main" {
  count       = var.enabled ? 1 : 0
  name        = var.ad_name
  password    = var.ad_password
  size        = var.ad_size
  type        = var.type
  alias       = var.alias
  enable_sso  = var.enable_sso
  description = var.description
  short_name  = var.short_name
  edition     = var.edition
  tags        = module.labels.tags

  dynamic "vpc_settings" {
    for_each = length(keys(var.vpc_settings)) == 0 ? [] : [var.vpc_settings]

    content {
      subnet_ids = split(",", lookup(vpc_settings.value, "subnet_ids", null))
      vpc_id     = lookup(vpc_settings.value, "vpc_id", null)
    }
  }

  dynamic "connect_settings" {
    for_each = length(keys(var.connect_settings)) == 0 ? [] : [var.connect_settings]

    content {
      customer_username = lookup(connect_settings.value, "customer_username", null)
      customer_dns_ips  = lookup(connect_settings.value, "customer_dns_ips", null)
      subnet_ids        = split(",", lookup(connect_settings.value, "subnet_ids", null))
      vpc_id            = lookup(connect_settings.value, "vpc_id", null)
    }
  }

}