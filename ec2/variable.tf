variable "region" {
  default = "us-east-1"
}

variable "inputEc2name" {
  type        = string
  description = "Enter the name of the EC2"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
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
            echo "<html><body><h1>Hello Web server from Madhu :D </h1></body></html>" > index.html 
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
