provider "aws" {  
  region = "us-east-1"  
}  

resource "aws_vpc" "main" {  
  cidr_block = "10.0.0.0/16"  
  tags = { Name = "gohackerscloud-vpc" }  
}  

resource "aws_subnet" "web" {  
  vpc_id            = aws_vpc.main.id  
  cidr_block        = "10.0.1.0/24"  
  availability_zone = "us-east-1a"  
  tags = { Name = "web-subnet" }  
}  

resource "aws_subnet" "db" {  
  vpc_id            = aws_vpc.main.id  
  cidr_block        = "10.0.2.0/24"  
  availability_zone = "us-east-1a"  
  tags = { Name = "db-subnet" }  
}  

resource "aws_internet_gateway" "igw" {  
  vpc_id = aws_vpc.main.id  
  tags = { Name = "igw" }  
}  

resource "aws_route_table" "rt" {  
  vpc_id = aws_vpc.main.id  
  route {  
    cidr_block = "0.0.0.0/0"  
    gateway_id = aws_internet_gateway.igw.id  
  }  
}  

resource "aws_route_table_association" "web" {  
  subnet_id      = aws_subnet.web.id  
  route_table_id = aws_route_table.rt.id  
}  

resource "aws_instance" "web" {  
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 x86_64 in us-east-1 (for example)  
  instance_type = "t2.micro"  
  subnet_id     = aws_subnet.web.id  
  tags = { Name = "gohackerscloud-web" }  

  user_data = <<-EOF  
              #!/bin/bash  
              yum -y update  
              amazon-linux-extras install -y lamp-mariadb10.2-php7.2  
              systemctl start httpd  
              systemctl enable httpd  
              echo "Hello from GoHackersCloud" > /var/www/html/index.html  
              EOF  
}  
