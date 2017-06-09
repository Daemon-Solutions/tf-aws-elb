resource "aws_elb" "elb" {
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

  listener {
    instance_port      = "${var.backend_port2}"
    instance_protocol  = "${var.backend_proto2}"
    lb_port            = "${var.elb_port2}"
    lb_protocol        = "${var.elb_proto2}"
    ssl_certificate_id = "${var.ssl_cert_id2}"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "${var.backend_target}"
    interval            = 30
  }

  cross_zone_load_balancing = "${var.cross_zone}"
  idle_timeout              = "${var.idle_timeout}"
  internal                  = "${var.internal}"

  tags {
    Name        = "${var.name}"
    Environment = "${var.envname}"
    Service     = "${var.service}"
    Envtype     = "${var.envtype}"
  }
}
