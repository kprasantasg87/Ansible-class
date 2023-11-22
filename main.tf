provider aws {
    region="ap-south-1"
    access_key="AKIAXBL5DJOO7PXUDTG3"
    secret_key="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"
}





resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  key_name                    = "jenkins"
  associate_public_ip_address = true
  availability_zone           = "ap-south-1a"
  
  
}


