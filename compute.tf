
resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "sophiat-first-ec2"
  }
}
