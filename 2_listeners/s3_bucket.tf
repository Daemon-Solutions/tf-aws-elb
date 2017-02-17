resource "aws_s3_bucket" "elb_log_bucket" {
  count  = "${var.log_s3bucket ? 1 : 0}"
  bucket = "${var.log_s3bucket}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AWSELBS3Logging",
      "Effect": "Allow",
      "Action": "s3:PutObject",
      "Principal": { "AWS": "arn:aws:iam::${lookup(var.elb_aws_account, var.region)}:root" },
      "Resource": "arn:aws:s3:::${var.log_s3bucket}/*"
    }
  ]
}
POLICY

  tags {
    Name        = "${var.name}"
    Environment = "${var.envname}"
    Service     = "${var.service}"
    Envtype     = "${var.envtype}"
  }
}
