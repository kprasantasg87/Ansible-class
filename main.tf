provider aws {
    region="ap-south-1"
    access_key=""
    secret_key=""
}






resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  key_name                    = "jenkins"
  availability_zone           = "ap-south-1a"
  
}


