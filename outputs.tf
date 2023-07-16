# S3 bucket
output "s3_bucket_regional_domain_name" {
  value = aws_s3_bucket.web_app_bucket.bucket_regional_domain_name
}

output "s3_bucket_domain_name" {
  value = aws_s3_bucket.web_app_bucket.bucket_domain_name
}

output "aws_s3_bucket_policy" {
  value = aws_s3_bucket_policy.web_app_policy.policy
}

# Cloudfront
output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.static_app_cf.domain_name
}

output "cloudfront_hosted_zone_id" {
  value = aws_cloudfront_distribution.static_app_cf.hosted_zone_id
}

#  ACM
output "cert_arn" {
  value = aws_acm_certificate.domain_cert.arn
}

output "cert_domain_name" {
  value = aws_acm_certificate.domain_cert.domain_name
}


output "cert_validation_records" {
  value = [
    for dvo in  aws_acm_certificate.domain_cert.domain_validation_options: 
    {
        domain_name = dvo.domain_name
        name   = dvo.resource_record_name
        type   = dvo.resource_record_type
        record = dvo.resource_record_value
    }
  ]
}

output "cert_domain_validation_options" {
  value =  [for dvo in aws_acm_certificate.domain_cert.domain_validation_options : dvo ]
}

# ACM validation
output "acm_validation_fqdns" {
  value = aws_acm_certificate_validation.domain_cert_validation.validation_record_fqdns
}

# Route 53
output "domain_route_record_validation_fqdn" {
  value = [ for record in aws_route53_record.validation: record.fqdn ]
}

output "domain_route_record_staticapp_fqdn" {
  value = aws_route53_record.staticapp.fqdn
}

output "domain_route_record_staticapp_name" {
  value = aws_route53_record.staticapp.name
}