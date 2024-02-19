variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "profile" {
  type    = string
  default = "ud"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type    = string
  default = "ud"
}

variable "security_groups" {
  type    = list(string)
  default = ["sg-0bbef9d56d1711d6f"]
}

variable "subnet_id" {
  type    = string
  default = "subnet-0265b3ce15871afd2"
}

variable "volume_size" {
  type    = number
  default = 8
}
variable "volume_type" {
  type    = string
  default = "gp3"
}

