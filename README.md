# AWS AMI Search module

Find latest RedHat Enterpise 8 or Amazon Linux 2 image

## Usage

Set the os var: "rhel8" or "amazon2"
and architecture : "x86_64" or "arm64"

## Examples

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

