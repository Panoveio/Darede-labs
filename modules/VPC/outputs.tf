# output "public_subnets" {
#   value = var.idsub
# }

output "vpc_id" {
  #value = var.VPC_idd
  value = module.vpc.vpc_id
}