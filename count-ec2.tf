# Provider information.

provider "aws" {
  region  = "us-east-1"
  profile = "KS-profile"
}


resource "aws_instance" "server" {
  count = 2 # create four similar EC2 instances

  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
