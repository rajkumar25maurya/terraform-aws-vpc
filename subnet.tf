resource "aws_subnet" "publicSubnet-A" {
    vpc_id = "${aws_vpc.mainvpc.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "PublicSubnet-A"
    }
    depends_on = [ "aws_vpc.mainvpc" ]
    
}

resource "aws_subnet" "privateSubnet-A" {
    vpc_id = "${aws_vpc.mainvpc.id}"
    cidr_block = "10.0.16.0/20"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "Privateubnet-A"
    }
    depends_on = [ "aws_vpc.mainvpc" ]
    
}