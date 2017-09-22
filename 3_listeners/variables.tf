# Global Configuration
variable "name" {
  description = "The desired name for your ELB. Will also be added as the value for the 'Name' tag"
  type = "string"
}

variable "envname" {
  description = "This will become the value for the 'Environment' tag on resources created by this module"
  type = "string"
}
variable "service" {
  description = "This will become the value for the 'Service' tag on resources created by this module"
  type = "string"
}

variable "region" {
  description = "The AWS region in which to create your resources"
  default = "eu-west-1"
}

# DNS Variables
variable "elb_dns" {
  description = "The count of how many ELB DNS records to create"
  type = "string"
  default = "0"
}

variable "route53_zone_id" {
  description = "The r53 zone ID in which to create DNS records"
  type = "string"
}

variable "domain" {
  description = "The domain name to specify for ELB DNS records"
  type = "string"
}

# ELB Configuration Variables
variable "subnets" {
  description = "A list of subnet IDs to attach to the ELB"
  type = "list"
  default = []
}

variable "security_groups" {
  desription = "A list of security group IDs to assign to the ELB. Only valid if creating an ELB within a VPC"
  type = "list"
  default = []
}

variable "elb_port" {
  desription = "The port for your ELB to listen on"
  type = "string"
  default = "80"
}

variable "elb_proto" {
  desription = "The protocol for your ELB to listen on"
  type = "string"
  default = "http"
}

variable "backend_target" {
  desription = "The target of the back end healthcheck"
  type = "string"
  default = "HTTP:80/"
}

variable "backend_port" {
  desription = "The port that the ELB will route backend traffic on"
  type = "string"
  default = "80"
}

variable "backend_proto" {
  desription = "The protocol that the ELB will route backend traffic on"
  type = "string"
  default = "http"
}

variable "ssl_cert_id" {
  desription = "The ARN of a TLS certificate you have uploaded to AWS IAM. Only valid for protocols HTTPS or SSL"
  type = "string"
  default = ""
}

variable "elb_port2" {
  desription = "The second port for your ELB to listen on"
  type = "string"
  default = "443"
}

variable "elb_proto2" {
  desription = "The second protocol for your ELB to listen on"
  type = "string"
  default = "http"
}

variable "backend_port2" {
  desription = "The second port that the ELB will route backend traffic on"
  type = "string"
  default = "80"
}

variable "backend_proto2" {
  desription = "The second protocol that the ELB will route backend traffic on"
  type = "string"
  default = "http"
}

variable "ssl_cert_id2" {
  desription = "The ARN of a TLS certificate you have uploaded to AWS IAM for use with the second listener. Only valid for protocols HTTPS or SSL"
  type = "string"
  default = ""
}

variable "elb_port3" {
  desription = "The third port for your ELB to listen on"
  type = "string"
  default = "8080"
}

variable "elb_proto3" {
  desription = "The third protocol for your ELB to listen on"
  type = "string"
  default = "http"
}

variable "backend_port3" {
  desription = "The third port that the ELB will route backend traffic on"
  type = "string"
  default = "8080"
}

variable "backend_proto3" {
  desription = "The third protocol that the ELB will route backend traffic on"
  type = "string"
  default = "http"
}

variable "ssl_cert_id3" {
  desription = "The ARN of a TLS certificate you have uploaded to AWS IAM for use with the third listener. Only valid for protocols HTTPS or SSL"
  type = "string"
  default = ""
}

variable "cross_zone" {
  desription = "Enables cross-zone load balancing on your ELB"
  type = "string"
  default = true
}

variable "idle_timeout" {
  desription = "The time in seconds that a connection is allowed to be idle"
  type = "string"
  default = 60
}

variable "internal" {
  desription = "If true, ELB will be an internal ELB"
  type = "string"
  default = false
}

variable "log_s3bucket" {
  desription = "If desired an s3 bucket will be created with this name to store ELB logs"
  type = "string"
  default = "None"
}

variable "log_s3prefix" {
  desription = "The location inside the s3 bucket to store the logs"
  type = "string"
  default = "ELB"
}

variable "log_interval" {
  desription = "The log publishing interval in minutes"
  type = "string"
  default = "60"
}
