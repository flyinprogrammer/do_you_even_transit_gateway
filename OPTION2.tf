// Option 2: Create an additional VPC Attachment and you'll get this error:
//

// Error: error creating EC2 Transit Gateway VPC Attachment: DuplicateTransitGatewayAttachment: tgw-0714e61c5056d1392 has non-deleted Transit Gateway Attachments with same VPC ID.
//        status code: 400, request id: dff3deeb-8311-4f09-998c-e87438ccf850
//
//  on OPTION2.tf line 4, in resource "aws_ec2_transit_gateway_vpc_attachment" "isolatedshared_vpcd_vpn":
//   4: resource "aws_ec2_transit_gateway_vpc_attachment" "isolatedshared_vpcd_vpn" {

//resource "aws_ec2_transit_gateway_vpc_attachment" "isolatedshared_vpcd_vpn" {
//  subnet_ids         = module.vpcd.public_subnets
//  transit_gateway_id = aws_ec2_transit_gateway.isolatedshared.id
//  vpc_id             = module.vpcd.vpc_id
//  transit_gateway_default_route_table_association = false
//  transit_gateway_default_route_table_propagation = false
//  tags = {
//    Name        = "isolatedshared-vpcd_vpn"
//  }
//}
