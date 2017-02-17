// Global Configuration
variable "name" {}
variable "envname" {}
variable "envtype" {}
variable "service" {}

variable "region" {
  default = "eu-west-1"
}

variable "elb_aws_account" {
  default = {
    us-east-1      = "127311923021"
    us-west-2      = "797873946194"
    us-west-1      = "027434742980"
    eu-west-1      = "156460612806"
    eu-west-2      = "652711504416"
    eu-central-1   = "054676820928"
    ap-southeast-1 = "114774131450"
    ap-northeast-1 = "582318560864"
    ap-southeast-2 = "783225319266"
    ap-northeast-2 = "600734575887"
    sa-east-1      = "507241528517"
    us-gov-west-1  = "048591011584"
    cn-north-1     = "638102146993"
  }
}

// DNS Variables
variable "elb_dns" {
  default = "0"
}

variable "route53_zone_id" {
  default = "changeme"
}

variable "domain" {
  default = "example.com"
}

// ELB Configuration Variables
variable "availability_zones" {
  type = "list"
}

variable "subnets" {
  type = "list"
}

variable "security_groups" {
  type = "list"
}

variable "elb_port" {
  default = "80"
}

variable "elb_proto" {
  default = "http"
}

variable "backend_target" {
  default = "HTTP:80/"
}

variable "backend_port" {
  default = "80"
}

variable "backend_proto" {
  default = "http"
}

variable "ssl_cert_id" {
  default = ""
}

variable "elb_port2" {
  default = "443"
}

variable "elb_proto2" {
  default = "http"
}

variable "backend_port2" {
  default = "80"
}

variable "backend_proto2" {
  default = "http"
}

variable "ssl_cert_id2" {
  default = ""
}

variable "cross_zone" {
  default = true
}

variable "idle_timeout" {
  default = 60
}

variable "internal" {
  default = false
}

variable "log_s3bucket" {
  default = "None"
}

variable "log_s3prefix" {
  default = "ELB"
}

variable "log_interval" {
  default = "60"
}

# ASG Configuration Variables
variable "ami_id" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "iam_instance_profile" {
  default = ""
}

variable "security_groups" {
  type = "list"
}

variable "associate_public_ip_address" {
  default = false
}

variable "detailed_monitoring" {
  default = true
}

variable "user_data" {
  default = ""
}

variable "subnets" {
  type = "list"
}

variable "min" {
  default = 1
}

variable "max" {
  default = 1
}

variable "autoscaling" {
  default = false
}

variable "cpu_scale_up" {
  default = "60"
}

variable "scale_minutes_up" {
  default = "5"
}

variable "cpu_scale_down" {
  default = "20"
}

variable "scale_minutes_down" {
  default = "20"
}

variable "scale_factor_up" {
  default = "1"
}

variable "scale_factor_down" {
  default = "-1"
}

variable "scale_statistic" {
  default = "Maximum"
}

variable "cooldown" {
  default = 300
}

variable "key_name" {
  default = "bashton"
}

variable "termination_policies" {
  type = "list"

  default = [
    "OldestLaunchConfiguration",
    "ClosestToNextInstanceHour",
  ]
}

variable "health_check_type" {
  default = "EC2"
}

variable "health_check_grace_period" {
  default = 300
}

variable "load_balancers" {
  type    = "list"
  default = []
}

variable "extra_elbs" {
  type    = "list"
  default = []
}
