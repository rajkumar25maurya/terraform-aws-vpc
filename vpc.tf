resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_internet_gateway" "IGF_TF" {
    vpc_id = aws_vpc.this.id
    tags = {
      "Name" = var.vpc_name
    }  
}

resource "aws_nat_gateway" "NATGW" {
    allocation_id = "${aws_eip.EIP.id}"
    subnet_id = "${aws_subnet.publicSubnet-A.id}"
    tags = {
      "Name" = "NATGW"
    }
    depends_on = [ "aws_eip.EIP","aws_subnet.publicSubnet-A" ]

}