variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type for EC2"
}


variable "key_name" {
  type        = string
  default     = "sde-key"
  description = "EC2 key name"
}

