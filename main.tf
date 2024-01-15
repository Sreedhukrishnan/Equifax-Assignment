resource "aws_instance" "example" {
  ami           = "ami-0005e0cfe09cc9050"  #Replace with the desired AMI
  instance_type = "t2.micro"  #Choose your desired instance type

  # Optional: Add tags for identification
  tags = {
    Name = "terraform-example-instance"
  }
}
