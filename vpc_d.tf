module "vpcd" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.39.0"

  name = "vpcd"

  cidr = "10.4.0.0/16"

  azs             = slice(data.aws_availability_zones.available.names, 0, 3)
  public_subnets = ["10.4.1.0/24", "10.4.2.0/24", "10.4.3.0/24"]

  enable_ipv6 = false

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    environment = "vpcd"
  }

}
