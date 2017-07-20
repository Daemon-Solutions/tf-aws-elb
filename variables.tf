# Global Configuration
variable "name" {}

variable "envname" {}
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

# DNS Variables
variable "elb_dns" {
  default = "0"
}

variable "route53_zone_id" {}

variable "domain" {}

# ELB Configuration Variables
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

variable "unhealthy_threshold" {
  default = "2"
}

variable "healthy_threshold" {
  default = "2"
}

variable "healthcheck_timeout" {
  default = "3"
}

variable "healthcheck_interval" {
  default = "30"
}
