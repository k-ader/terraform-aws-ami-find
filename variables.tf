variable "os" {
  description = "The OS reference to search for"
  type        = string
  validation {
    condition     = contains(["rhel8", "amazon2"], var.os)
    error_message = "Invalid input, options: \"rhel8\" or \"amazon2\"."
  }
}

variable "architecture" {
  description = "OS architecture of the AMI (ie: i386 or x86_64)."
  type        = string
  validation {
    condition     = contains(["x86_64", "arm64"], var.architecture)
    error_message = "Invalid input, options: \"x86_64\" or \"arm64\"."
  }
}

variable "amis_map_regex" {
  description = ""
  type        = map(string)
  default = {
    rhel8   = "^RHEL-8.[8-9]"
    amazon2 = "^amzn2-ami-hvm"
  }
}

variable "amis_map_owners" {
  description = ""
  type        = map(string)
  default = {
    rhel8   = "309956199498"
    amazon2 = "137112412989"
  }
}

variable "amis_map_public" {
  description = ""
  type        = map(string)
  default = {
    rhel8   = "false"
    amazon2 = "true"
  }
}
