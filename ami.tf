# Get data from AWS
data "aws_ami" "find" {
  most_recent = true

  name_regex = lookup(var.amis_map_regex, var.os)
  owners     = [lookup(var.amis_map_owners, var.os)]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = [var.architecture]
  }
  filter {
    name   = "is-public"
    values = [lookup(var.amis_map_public, var.os)]
  }
}