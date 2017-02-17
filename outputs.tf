output "launch_config_id" {
    value = "${aws_launch_configuration.lc.id}"
}
output "asg_id" {
    value = "${aws_autoscaling_group.asg.id}"
}
output "asg_name" {
    value = "${aws_autoscaling_group.asg.name}"
}
output "elb_log_s3bucket" {
    value = "${aws_s3_bucket.elb_log_bucket.id}"
}
output "elb_dns_name" {
    value = "${aws_elb.elb.dns_name}"
}
output "elb_zone_id" {
    value = "${aws_elb.elb.zone_id}"
}
