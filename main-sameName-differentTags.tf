resource "aws_instance" "example" {
  count = 3

  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"

  tags = {
    Name = "my-application-servers"  # Consistent name for all instances
    Environment = "production"  # Example of a common tag
    Role = "${element(var.instance_roles, count.index)}"  # Variable tag based on index
  }
}

variable "instance_roles" {
  type = list(string)
  default = ["web", "app", "db"]  # Example roles as different labels
}
