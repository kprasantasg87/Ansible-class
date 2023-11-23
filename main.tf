provider aws {
    region="ap-south-1"
    access_key="AKIAXBL5DJOOXDFCUVXA"
    secret_key="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"
}





resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  
  
}


