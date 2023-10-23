provider aws{
  region ="ap-south-1"
  access_key="AKIAXBL5DJOOQ6OSIEIQ"
  secret_key = "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"
}
resource aws_vpc "VPC"{
  cidr_block="172.0.0.0/24"
}
