variable "instance_names" {
  type = list(string)
  default = ["instance1", "instance2", "instance3"]  #use list as per need
}

resource "aws_instance" "example" {
  count = length(var.instance_names)

  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}
