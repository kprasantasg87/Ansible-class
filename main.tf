provider aws{
  region ="ap-south-1"
  access_key="AKIAXBL5DJOOY4JJV4G4"
  secret_key = "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"
}
resource aws_vpc "VPC"{
  cidr_block="172.0.0.0/24"
}
resource aws_subnet "SUB1"{
  vpc_id=aws_vpc.VPC.id
  cidr_block="172.0.0.0/25"
}
resource aws_subnet "SUB2"{
  vpc_id=aws_vpc.VPC.id
  cidr_block="172.0.0.128/25"
}
resource aws_internet_gateway "IGW"{
    vpc_id=aws_vpc.VPC.id
}
resource aws_route_table "RT"{
    vpc_id=aws_vpc.VPC.id
    route{
        gateway_id=aws_internet_gateway.IGW.id
        cidr_block="0.0.0.0/0"
    }
}
resource aws_route_table_association "ARTA"{
    subnet_id=aws_subnet.SUB1.id
    route_table_id=aws_route_table.RT.id
    }
resource aws_instance "INST"{
    instance_type ="t2.micro"
    ami="ami-072ec8f4ea4a6f2cf"
    key_name="ansible-jenkins"
    subnet_id=aws_subnet.SUB1.id
    associate_public_ip_address= true
}
