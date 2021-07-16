resource "aws_elb" "md-first-elb" {
  name               = "md-tf-elb"
  availability_zones = var.azs
  #   security_groups    = [aws_security_group.md_web_sg.id]
  security_groups = [aws_security_group.md_elb_sg.id]
  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = var.http_port
    instance_protocol = "http"
  }
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:${var.http_port}/"
    interval            = 30
  }
}
