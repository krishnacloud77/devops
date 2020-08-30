variable "AWS_REGION" {
  type    = "string"
  default = "ca-central-1"
}

variable "AMIS" {
  type = "map"

  default = {
    ca-central-1 = "ami-054362537f5132ce2"
    us-east-1 = "ami-07b4156579ea1d7ba"
    us-west-1 = "ami-07d3239ff0bf35160"
    us-west-2 = "ami-036affea69a1101c9"
  }
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/id_rsa.pub"
}
