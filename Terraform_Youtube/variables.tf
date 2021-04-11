variable "my_instance" {
  type        = string
  description = "t2.micro ec2 instance"
}

variable "instance_tags" {
  type = object({
    Name            = string
    primary_owner   = string
    secondary_owner = string
    business_unit   = string
    cost_centre     = number
  })
  description = "Tags for EC2 Instance"
}
