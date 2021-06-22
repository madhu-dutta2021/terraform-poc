/* CREATE EC2 */
resource "aws_instance" "md_web_ec2" {
  count                  = 1
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.md_web_sg.id]

  # To protect ec2 instance from accidental termination
  # disable_api_termination = true

  tags = {
    Name = "var.inputEc2name-${count.index}"
  }

  //Userdata to install webserver config via bootstrap script
  user_data = var.user_data

}
