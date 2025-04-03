resource "aws_subnet" "publicSubnet-A" {
    for_each = var.public_subnets

    vpc_id = aws_vpc.this.id
    cidr_block = each.value.cidr
    availability_zone = each.value.az
    map_public_ip_on_launch = true

    tags = {
        Name = each.key
    }
    depends_on = [ aws_vpc.this ]
    
}

resource "aws_subnet" "privateSubnet-A" {
    for_each = var.private_subnets

    vpc_id = aws_vpc.this.id
    cidr_block = each.value.cidr
    availability_zone = each.value.az
    map_public_ip_on_launch = false

    tags = {
        Name = each.key
    }
    depends_on = [ aws_vpc.this ]
    
}