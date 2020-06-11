// Option 1: Try and associate the same VPC with multiple route tables but you'll get this:
//
// Error: error associating EC2 Transit Gateway Route Table (tgw-rtb-093a33ce1f33627bd) association (tgw-attach-072af24c4e7a7a8cb): Resource.AlreadyAssociated: Transit Gateway Attachment tgw-attach-072af24c4e7a7a8cb is already associated to a route table.
//        status code: 400, request id: 51c6a6d6-3f50-4910-a511-248113bcecbb
//
//  on OPTION1.tf line 9, in resource "aws_ec2_transit_gateway_route_table_association" "vpn_vpcd":
//   9: resource "aws_ec2_transit_gateway_route_table_association" "vpn_vpcd" {
//

//resource "aws_ec2_transit_gateway_route_table_association" "most_vpcd" {
//  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.isolatedshared_vpcd.id
//  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.most.id
//}
//
//resource "aws_ec2_transit_gateway_route_table_association" "vpn_vpcd" {
//  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.isolatedshared_vpcd.id
//  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpn.id
//}
