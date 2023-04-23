provider "aws" {
region = "ap-south-1"
access_key = "AKIASXBPOSPPQCSVPEUA"
secret_key = "eig+vS8x7/WKJBgf4vbUxHSfKHXdHwkkHB17zFLA"
}

resource "aws_instance" "example-server" {
  ami                         = "ami-03a933af70fa97ad2" // Ubuntu 20.04 LTS
  instance_type               = "r5.xlarge"
  disable_api_termination     = false
  monitoring                  = false
  subnet_id                   = "subnet-007020ba1e2520fe0"
  key_name                    = "gitkey"
  vpc_security_group_ids      = ["sg-0e2f78b30e4a8821e"]

  root_block_device {
    volume_type           = "standard"
    volume_size           = 10
    encrypted             = true
    delete_on_termination = true
   }
  }
