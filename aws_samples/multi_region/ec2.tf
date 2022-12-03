resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web-west-2" {
  provider      = aws.west-2
  ami           = data.aws_ami.ubuntu-west-2.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}