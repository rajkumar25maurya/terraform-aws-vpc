variable "region" {
    type = string

}

variable "vpc_cidr" {
    type = string
    description = "vpc cidr block"
    }


variable "public_subnets" {
    type = map(object({
        cidr = string
        az   = string
    }))
    default = {
      "PublicSubnet-A" = { cidr = "10.0.1.0/24", az = "us-east-1a" }
    }
    description = "Public subnet"

}

variable "private_subnets" {
    type = map(object({
        cidr = string
        az   = string
    }))
    default = {
      "PrivateSubnet-A" = { cidr = "10.0.2.0/24", az = "us-east-1b" }
    }
    description = "private subnet"

}

variable "availability_zone" {
    type = string
    description = "name of the availability zone"
    
}

variable "vpc_name" {
    type = string
    description = "Name of the string"
  
}

variable "eip" {
    type = string
    description = "Name of the eip"
  
}
