
resource "aws_lb" "main" {
  name               = "sophiat-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [aws_security_group.alb.id]

  subnets = [
    aws_subnet.name.id,
    aws_subnet.second.id
  ]

  tags = {
    Name = "sophiat-alb"
  }
}
