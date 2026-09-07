variable "region" {
  default = "us-east-1"
}

variable "zone" {
  default = "us-east-1a"
}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0c02fb55956c7d316"
    "us-east-2" = "ami-0b59bfac6be064b78"
    "us-west-1" = "ami-0bdb828fd58c52235"
    "us-west-2" = "ami-0915e09cc7ceee3ab"
  }
}