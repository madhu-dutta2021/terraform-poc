resource aws_launch_configuration "md-first-launch-config" {
  name            = "Webserver_launch"
  image_id        = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
  security_groups = ["${aws_security_group.md_web_sg.id}"]
  key_name        = var.key_name
}
