output "ami_id" {
  description = "The AMI id result of the search"
  value       = data.aws_ami.find.id
}

output "name" {
  description = "The AMI Name"
  value = data.aws_ami.find.name
}
output "root_device_name" {
  description = "The device name of the root dev"
  value       = data.aws_ami.find.root_device_name
}

output "owner_id" {
  description = "The owner id of the selected ami"
  value       = data.aws_ami.find.owner_id
}
output "creation_date" {
  description = "The date of creation of the selected ami"
  value       = data.aws_ami.find.creation_date
}