provider aws {
    access_key="AKIAXBL5DJOOYOWJCRXP"
    secret_key="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"
}





resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  
  
}


