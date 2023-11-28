provider aws {
    region="ap-south-1"
    access_key="AKIAXBL5DJOO4ILK3BZ3"
    secret_key="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"
}






resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  key_name                    = "jenkins"
  availability_zone           = "ap-south-1a"
  
}


