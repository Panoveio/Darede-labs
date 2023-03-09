module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "VPC-Quintans"
  cidr = "192.168.0.0/16"

  azs            = ["us-east-1a"]
  public_subnets = ["192.168.1.0/24"]
  private_subnets = ["192.168.2.0/24"]

  tags = {
    Terraform = "true"
    Owner     = var.owner
    BU        = var.BU
  }
}

# resource "aws_security_group" "Quintans_SG" {
#   name        = "Quintans_SG"
#   description = "Quintans_SG"
#   vpc_id      = "${module.vpc.output.vpc_id}"
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "ssh"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port = 80
#     to_port = 80
#     protocol = "http"
#     cidr_blocks = [ "0.0.0.0/0" ]
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Owner      = var.owner
#     Department = var.BU
#   }
# }