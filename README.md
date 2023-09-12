## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5 |

## Modules

No modules.

## Example

```hcl
module "ami-find" {
  source       = "./modules/terraform-aws-ami-find"
  os           = "rhel8"
  architecture = "x86_64"
}

output "ami_id" {
  value = "${module.ami-find.ami_id}"
}
output "ami_name" {
  value = "${module.ami-find.name}"
}

output "ami_date" {
  value = "${module.ami-find.creation_date}"
}
```

## Resources

| Name | Type |
|------|------|
| [aws_ami.find](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amis_map_owners"></a> [amis\_map\_owners](#input\_amis\_map\_owners) | n/a | `map(string)` | <pre>{<br>  "amazon2": "137112412989",<br>  "rhel8": "309956199498"<br>}</pre> | no |
| <a name="input_amis_map_public"></a> [amis\_map\_public](#input\_amis\_map\_public) | n/a | `map(string)` | <pre>{<br>  "amazon2": "true",<br>  "rhel8": "false"<br>}</pre> | no |
| <a name="input_amis_map_regex"></a> [amis\_map\_regex](#input\_amis\_map\_regex) | n/a | `map(string)` | <pre>{<br>  "amazon2": "^amzn2-ami-hvm",<br>  "rhel8": "^RHEL-8.[8-9]"<br>}</pre> | no |
| <a name="input_architecture"></a> [architecture](#input\_architecture) | OS architecture of the AMI (ie: i386 or x86\_64). | `string` | n/a | yes |
| <a name="input_os"></a> [os](#input\_os) | The OS reference to search for | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | The ID of the found AMI |
| <a name="output_creation_date"></a> [creation\_date](#output\_creation\_date) | Date and time the image was created |
| <a name="output_deprecation_time"></a> [deprecation\_time](#output\_deprecation\_time) | Date and time when the image will be deprecated |
| <a name="output_name"></a> [name](#output\_name) | The AMI Name |
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id) | AWS account ID of the image owner |
| <a name="output_root_device_name"></a> [root\_device\_name](#output\_root\_device\_name) | Device name of the root device. |
