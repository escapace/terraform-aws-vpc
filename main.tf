locals {
  enabled                                   = module.this.enabled
  ipv6_egress_only_internet_gateway_enabled = local.enabled && var.egress_only_internet_gateway_enabled
}

# tfsec:ignore:aws-ec2-require-vpc-flow-logs-for-all-vpcs
resource "aws_vpc" "default" {
  count = local.enabled ? 1 : 0

  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = local.dns_hostnames_enabled
  enable_dns_support               = local.dns_support_enabled
  assign_generated_ipv6_cidr_block = local.ipv6_enabled
  tags                             = module.this.tags
}

# If `aws_default_security_group` is not defined, it will be created implicitly with access `0.0.0.0/0`
resource "aws_default_security_group" "default" {
  count = local.default_security_group_deny_all ? 1 : 0

  vpc_id = aws_vpc.default[0].id
  tags   = merge(module.this.tags, { Name = "Default Security Group" })
}

resource "aws_internet_gateway" "default" {
  count = local.internet_gateway_enabled ? 1 : 0

  vpc_id = aws_vpc.default[0].id
  tags   = module.this.tags
}

resource "aws_egress_only_internet_gateway" "default" {
  count = local.ipv6_egress_only_internet_gateway_enabled ? 1 : 0

  vpc_id = aws_vpc.default[0].id
  tags   = module.this.tags
}

resource "aws_vpc_ipv4_cidr_block_association" "default" {
  for_each = local.enabled ? toset(var.additional_cidr_blocks) : []

  vpc_id     = aws_vpc.default[0].id
  cidr_block = each.key
}
