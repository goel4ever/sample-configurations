# EC2 Security Group Example
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-sg-example"
  }
}

# EC2 Instance Example
resource "aws_instance" "example" {
  ami                       = "ami-0fb653ca2d3203ac1"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [aws_security_group.instance.id]

  tags = {
    Name = "terraform-example"
  }
}
