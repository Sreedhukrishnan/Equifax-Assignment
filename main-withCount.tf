resource "aws_instance" "example" {
  count = 3  # Create 3 instances

  ami           = "ami-0005e0cfe09cc9050"  #Check the AMI
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example-instance-${count.index + 1}"  # Dynamic naming
  }
}
