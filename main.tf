provider aws {
    access_key="AKIAXBL5DJOO6NPRS37M"
    secret_key="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"
}





resource "aws_instance" "awsinstance" {
  ami                         = "ami-099b3d23e336c2e83"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  
  
}


