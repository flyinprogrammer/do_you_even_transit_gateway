resource "aws_ec2_transit_gateway_vpc_attachment" "isolatedshared_vpcd" {
  subnet_ids         = module.vpcd.public_subnets
  transit_gateway_id = aws_ec2_transit_gateway.isolatedshared.id
  vpc_id             = module.vpcd.vpc_id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags = {
    Name        = "isolatedshared-vpcd"
  }
}
