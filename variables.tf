variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and ower for AMI"

  type = object({
    name  = sting
    owner = string
  })

  default = {
    name  = "var.ami_filter.name"
    owner = "var.ami_filter.owner" # Bitnami
  }
}

variable "environment" {
  description = "Development Environment"

  type = object *({
    name           = string
    network_prefix = string
  })

  default = {
    name           = dev
    network_prefix = "10.0"
  }
}


variable "asg_min_size" {
description = "Minumum number of instances in the ASG"
  default             = 1
}

variable "asg_max_size" {
description = "Maximum number of instances in the ASG"
  default             = 2
}


