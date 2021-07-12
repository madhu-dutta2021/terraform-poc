resource "aws_autoscaling_group" "md_asg" {
  availability_zones        = var.azs
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.md-first-launch-config.id}"
  tag {
    key                 = "Name"
    value               = "md-tf-asg"
    propagate_at_launch = true
  }
}
