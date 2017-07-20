resource "aws_elb" "elb" {
  name = "${var.name}"

  subnets         = ["${var.subnets}"]
  security_groups = ["${var.security_groups}"]

  access_logs {
    enabled       = "${var.log_s3bucket != "None" ? true : false}"
    bucket        = "${var.log_s3bucket != "None" ? var.log_s3bucket : "None"}"
    bucket_prefix = "${var.log_s3prefix}"
    interval      = "${var.log_interval}"
  }

  listener {
    instance_port      = "${var.backend_port}"
    instance_protocol  = "${var.backend_proto}"
    lb_port            = "${var.elb_port}"
    lb_protocol        = "${var.elb_proto}"
    ssl_certificate_id = "${var.ssl_cert_id}"
  }

  health_check {
    healthy_threshold   = "${var.healthy_threshold}"
    unhealthy_threshold = "${var.unhealthy_threshold}"
    timeout             = "${var.healthcheck_timeout}"
    target              = "${var.backend_target}"
    interval            = "${var.healthcheck_interval}"
  }

  cross_zone_load_balancing = "${var.cross_zone}"
  idle_timeout              = "${var.idle_timeout}"
  internal                  = "${var.internal}"

  tags {
    Name        = "${var.name}"
    Environment = "${var.envname}"
    Service     = "${var.service}"
  }
}
