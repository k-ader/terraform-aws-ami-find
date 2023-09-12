output "ami_id" {
  description = "The ID of the found AMI"
  value       = data.aws_ami.find.id
}

output "name" {
  description = "The AMI Name"
  value       = data.aws_ami.find.name
}
output "root_device_name" {
  description = "Device name of the root device."
  value       = data.aws_ami.find.root_device_name
}

output "owner_id" {
  description = "AWS account ID of the image owner"
  value       = data.aws_ami.find.owner_id
}
output "creation_date" {
  description = "Date and time the image was created"
  value       = data.aws_ami.find.creation_date
}

output "deprecation_time" {
  description = "Date and time when the image will be deprecated"
  value       = data.aws_ami.find.deprecation_time
}
