resource "aws_security_group" "ingress_http" {
  name        = "ingress_http"
  description = "Allow all inbound traffic"
    vpc_id = "${aws_vpc.main.id}"


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "ingress http"
  }
}
resource "aws_security_group" "ingress_ssh" {
  name        = "ingress_ssh"
  description = "Allow ssh inbound traffic"
    vpc_id = "${aws_vpc.main.id}"

   ingress {
    from_port   = 20
    to_port     = 20
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "ingress_ssh"
  }
}
resource "aws_security_group" "egress_tcp" {
  name        = "egress_tcp"
  description = "Allow all outbound traffic"
    vpc_id = "${aws_vpc.main.id}"


  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.1.0/24"]
  }

  tags {
    Name = "security_group2"
  }
}