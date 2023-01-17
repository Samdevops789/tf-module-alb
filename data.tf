data "aws_route53_zone" "public" {
  name         = "devops789.online"
  private_zone = false
}

data "aws_acm_certificate" "public" {
  domain   = "*.devops789.online"
  statuses = ["ISSUED"]
}
