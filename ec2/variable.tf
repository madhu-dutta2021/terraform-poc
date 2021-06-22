variable "region" {
  default = "us-east-1"
}

variable "inputEc2name" {
  type        = string
  description = "Enter the name of the EC2"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "test-key"
}

variable "user_data" {

  default = <<-EOF

    #!/bin/bash

    sudo yum update -y

    sudo yum install httpd -y

    service httpd start

    chkconfig httpd on

    cd /var/www/html

    echo "<html><h1>Hello! Welcome To My Webpage</h1></html>" >

    index.html

  EOF
}

variable "http_port" {
  default = 80
}

variable "ssh_port" {
  default = 22
}

variable "my_ip" {
  default = ["202.53.44.208/32"]
}
