provider aws {
    region="ap-south-1"
    access_key="AKIAXBL5DJOOYVZTYYWH"
    secret_key="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"
}





resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  
  
}


