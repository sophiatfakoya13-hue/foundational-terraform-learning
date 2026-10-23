
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "sophiat-first-ec2"
  }
}

resource "aws_subnet" "name" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sophiat-first-subnet"
  }
}

resource "aws_subnet" "second" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "sophiat-second-subnet"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "sophiat-first-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "sophiat-first-rt"
  }
}

resource "aws_route_table_association" "first" {
  subnet_id      = aws_subnet.name.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "second" {
  subnet_id      = aws_subnet.second.id
  route_table_id = aws_route_table.public.id
}
