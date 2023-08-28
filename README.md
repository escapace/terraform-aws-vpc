<!-- BEGIN_TF_DOCS -->

## Resources

| Name                                                                                                                                                       | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_default_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group)                   | resource |
| [aws_egress_only_internet_gateway.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/egress_only_internet_gateway)       | resource |
| [aws_internet_gateway.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)                               | resource |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)                                                         | resource |
| [aws_vpc_ipv4_cidr_block_association.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_ipv4_cidr_block_association) | resource |

## Inputs

| Name                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type           | Default                                                                                                                                                                                                                                                                                                                                                                   | Required |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| additional_cidr_blocks               | A list of additional IPv4 CIDR blocks to associate with the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | `list(string)` | `[]`                                                                                                                                                                                                                                                                                                                                                                      |    no    |
| additional_tag_map                   | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`. This is for some rare cases where resources want additional configuration of tags and therefore take a list of maps with tag key, value, and additional configuration.                                                                                                                                                                                                                                                                                                                                                        | `map(string)`  | `{}`                                                                                                                                                                                                                                                                                                                                                                      |    no    |
| attributes                           | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`, in the order they appear in the list. New attributes are appended to the end of the list. The elements of the list are joined by the `delimiter` and treated as a single ID element.                                                                                                                                                                                                                                                                                                                                                                | `list(string)` | `[]`                                                                                                                                                                                                                                                                                                                                                                      |    no    |
| cidr_block                           | IPv4 CIDR to assign to the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | `string`       | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |
| context                              | Single object for setting entire context at once. See description of individual variables for details. Leave string and numeric variables as `null` to use default value. Individual variable settings (non-null) override settings in context object, except for attributes, tags, and additional_tag_map, which are merged.                                                                                                                                                                                                                                                                                                       | `any`          | `{ "additional_tag_map": {}, "attributes": [], "delimiter": null, "descriptor_formats": {}, "enabled": true, "environment": null, "id_length_limit": null, "label_key_case": null, "label_order": [], "label_value_case": null, "labels_as_tags": [ "unset" ], "name": null, "namespace": null, "regex_replace_chars": null, "stage": null, "tags": {}, "tenant": null }` |    no    |
| default_security_group_deny_all      | When `true`, manage the default security group and remove all rules, disabling all ingress and egress. When `false`, do not manage the default security group, allowing it to be managed by another component                                                                                                                                                                                                                                                                                                                                                                                                                       | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| delimiter                            | Delimiter to be used between ID elements. Defaults to `-` (hyphen). Set to `""` to use no delimiter at all.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| descriptor_formats                   | Describe additional descriptors to be output in the `descriptors` output map. Map of maps. Keys are names of descriptors. Values are maps of the form `{    format = string    labels = list(string) }` (Type is `any` so the map values can later be enhanced to provide additional options.) `format` is a Terraform format string to be passed to the `format()` function. `labels` is a list of labels, in order, to pass to `format()` function. Label values will be normalized before being passed to `format()` so they will be identical to how they appear in `id`. Default is `{}` (`descriptors` output will be empty). | `any`          | `{}`                                                                                                                                                                                                                                                                                                                                                                      |    no    |
| dns_hostnames_enabled                | A boolean flag to enable/disable DNS hostnames in the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| dns_support_enabled                  | A boolean flag to enable/disable DNS support in the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| egress_only_internet_gateway_enabled | A boolean flag to enable/disable IPv6 Egress-Only Internet Gateway creation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| enabled                              | Set to false to prevent the module from creating any resources                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | `bool`         | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| environment                          | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| id_length_limit                      | Limit `id` to this many characters (minimum 6). Set to `0` for unlimited length. Set to `null` for keep the existing setting, which defaults to `0`. Does not affect `id_full`.                                                                                                                                                                                                                                                                                                                                                                                                                                                     | `number`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| instance_tenancy                     | A tenancy option for instances launched into the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | `string`       | `"default"`                                                                                                                                                                                                                                                                                                                                                               |    no    |
| internet_gateway_enabled             | A boolean flag to enable/disable Internet Gateway creation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| ipv6_enabled                         | If `true`, enable IPv6 and assign a generated CIDR block to the VPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | `bool`         | `true`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| label_key_case                       | Controls the letter case of the `tags` keys (label names) for tags generated by this module. Does not affect keys of tags passed in via the `tags` input. Possible values: `lower`, `title`, `upper`. Default value: `title`.                                                                                                                                                                                                                                                                                                                                                                                                       | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| label_order                          | The order in which the labels (ID elements) appear in the `id`. Defaults to ["namespace", "environment", "stage", "name", "attributes"]. You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present.                                                                                                                                                                                                                                                                                                                                                                                                  | `list(string)` | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| label_value_case                     | Controls the letter case of ID elements (labels) as included in `id`, set as tag values, and output by this module individually. Does not affect values of tags passed in via the `tags` input. Possible values: `lower`, `title`, `upper` and `none` (no transformation). Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs. Default value: `lower`.                                                                                                                                                                                                                                                        | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| labels_as_tags                       | Set of labels (ID elements) to include as tags in the `tags` output. Default is to include all labels. Tags with empty values will not be included in the `tags` output. Set to `[]` to suppress all generated tags. **Notes:** The value of the `name` tag, if included, will be the `id`, not the `name`. Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be changed in later chained modules. Attempts to change it will be silently ignored.                                                                                                                                                   | `set(string)`  | `[ "default" ]`                                                                                                                                                                                                                                                                                                                                                           |    no    |
| name                                 | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'. This is the only ID element not also included as a `tag`. The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input.                                                                                                                                                                                                                                                                                                                                                                                           | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| namespace                            | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| regex_replace_chars                  | Terraform regular expression (regex) string. Characters matching the regex will be removed from the ID elements. If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits.                                                                                                                                                                                                                                                                                                                                                                                                           | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| stage                                | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |
| tags                                 | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`). Neither the tag keys nor the tag values will be modified by this module.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | `map(string)`  | `{}`                                                                                                                                                                                                                                                                                                                                                                      |    no    |
| tenant                               | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | `string`       | `null`                                                                                                                                                                                                                                                                                                                                                                    |    no    |

## Outputs

| Name                                      | Description                                                          |
| ----------------------------------------- | -------------------------------------------------------------------- |
| additional_cidr_blocks                    | A list of the additional IPv4 CIDR blocks associated with the VPC    |
| additional_cidr_blocks_to_association_ids | A map of the additional IPv4 CIDR blocks to VPC CIDR association IDs |
| cidr_block                                | The CIDR block of the VPC                                            |
| default_network_acl_id                    | The ID of the network ACL created by default on VPC creation         |
| default_route_table_id                    | The ID of the route table created by default on VPC creation         |
| default_security_group_id                 | The ID of the security group created by default on VPC creation      |
| egress_only_internet_gateway_id           | The ID of the egress-only Internet Gateway                           |
| id                                        | The ID of the VPC                                                    |
| internet_gateway_id                       | The ID of the Internet Gateway                                       |
| ipv6_association_id                       | The association ID for the IPv6 CIDR block                           |
| ipv6_cidr_block                           | The IPv6 CIDR block                                                  |
| main_route_table_id                       | The ID of the main route table associated with this VPC              |

<!-- END_TF_DOCS -->
