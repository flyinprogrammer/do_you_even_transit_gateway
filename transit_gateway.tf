resource "aws_ec2_transit_gateway" "isolatedshared" {
  description     = "isolatedshared"
  amazon_side_asn = 64600
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name        = "isolatedshared"
  }
}

resource "aws_ec2_transit_gateway_route_table" "most" {
  transit_gateway_id = aws_ec2_transit_gateway.isolatedshared.id
  tags = {
    Name        = "isolatedshared_most"
  }
}

resource "aws_ec2_transit_gateway_route_table" "vpn" {
  transit_gateway_id = aws_ec2_transit_gateway.isolatedshared.id
  tags = {
    Name        = "isolatedshared_vpn"
  }
}
