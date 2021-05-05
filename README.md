## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | >= 3.1.15 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.1.15 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| labels | git::https://github.com/clouddrove/terraform-labels.git?ref=tags/0.14.0 |  |

## Resources

| Name |
|------|
| [aws_directory_service_directory](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/resources/directory_service_directory) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/data-sources/iam_policy_document) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/resources/iam_role_policy_attachment) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/resources/iam_role) |
| [aws_workspaces_directory](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/resources/workspaces_directory) |
| [aws_workspaces_ip_group](https://registry.terraform.io/providers/hashicorp/aws/3.1.15/docs/resources/workspaces_ip_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ad\_name | AD name | `any` | `null` | no |
| ad\_password | AD password | `any` | `null` | no |
| ad\_service\_id | AD service ID | `string` | `""` | no |
| ad\_size | Size of the AD | `string` | `"Small"` | no |
| change\_compute\_type | Enable change compute type | `bool` | `true` | no |
| custom\_policy | Custom policy ARN | `string` | `""` | no |
| device\_type\_android | Allow device type android | `string` | `"ALLOW"` | no |
| device\_type\_chromeos | Allow device type chromeos | `string` | `"ALLOW"` | no |
| device\_type\_ios | Allow device type ios | `string` | `"ALLOW"` | no |
| device\_type\_osx | Allow device type osx | `string` | `"ALLOW"` | no |
| device\_type\_web | Allow device type web | `string` | `"ALLOW"` | no |
| device\_type\_windows | Allow device type windows | `string` | `"ALLOW"` | no |
| device\_type\_zeroclient | Allow device type zeroclient | `string` | `"ALLOW"` | no |
| enable\_internet\_access | Enable internet access | `bool` | `false` | no |
| enable\_maintenance\_mode | Enable maintenance mode | `bool` | `false` | no |
| increase\_volume\_size | Enable increase volume size | `bool` | `true` | no |
| ip\_whitelist | List of IP's to for whitelist | `list(string)` | `null` | no |
| name | Name of the component | `any` | `null` | no |
| rebuild\_workspace | Enable rebuild workspace | `bool` | `true` | no |
| restart\_workspace | Enable restart workspace | `bool` | `true` | no |
| subnet\_ids | List of subnets in VPC | `list(string)` | `null` | no |
| switch\_running\_mode | Enable switch running mode | `bool` | `true` | no |
| user\_enabled\_as\_local\_administrator | User enabled as local administrator | `bool` | `false` | no |
| vpc\_id | VPC ID | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| directory\_id | n/a |