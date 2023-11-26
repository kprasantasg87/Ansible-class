provider aws {
    region="ap-south-1"
    access_key="AKIAXBL5DJOOT75KFB5L"
    secret_key="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"
}






resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  key_name                    = "jenkins"
  availability_zone           = "ap-south-1a"
  
}


