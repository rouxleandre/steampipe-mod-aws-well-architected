locals {
  well_architected_framework_sec09_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "protect-data-transit"
  })
}

benchmark "well_architected_framework_sec09" {
  title       = "SEC09 How do you protect your data in transit?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec09_bp01,
    benchmark.well_architected_framework_sec09_bp02,
    benchmark.well_architected_framework_sec09_bp03
  ]

  tags = local.well_architected_framework_sec09_common_tags
}

benchmark "well_architected_framework_sec09_bp01" {
  title       = "BP01 Implement secure key and certificate management"
  description = "Transport Layer Security (TLS) certificates are used to secure network communications and establish the identity of websites, resources, and workloads over the internet, as well as private networks."

  children = [
    aws_compliance.control.acm_certificate_expires_30_days,
    aws_compliance.control.elb_classic_lb_use_ssl_certificate,
    aws_compliance.control.elb_application_network_lb_use_ssl_certificate
  ]

  tags = merge(local.well_architected_framework_sec09_common_tags, {
    choice_id = "sec_protect_data_transit_key_cert_mgmt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec09_bp02" {
  title       = "BP02 Enforce encryption in transit"
  description = "Enforce your defined encryption requirements based on your organization’s policies, regulatory obligations and standards to help meet organizational, legal, and compliance requirements. Only use protocols with encryption when transmitting sensitive data outside of your virtual private cloud (VPC). Encryption helps maintain data confidentiality even when the data transits untrusted networks."

  children = [
    aws_compliance.control.elb_application_lb_drop_http_headers,
    aws_compliance.control.elb_application_lb_redirect_http_request_to_https,
    aws_compliance.control.es_domain_node_to_node_encryption_enabled,
    aws_compliance.control.apigateway_rest_api_stage_use_ssl_certificate,
    aws_compliance.control.opensearch_domain_node_to_node_encryption_enabled,
    aws_compliance.control.opensearch_domain_https_required,
    aws_compliance.control.cloudfront_distribution_custom_origins_encryption_in_transit_enabled,
    aws_compliance.control.cloudfront_distribution_no_deprecated_ssl_protocol,
    aws_compliance.control.elb_listener_use_secure_ssl_cipher,
    aws_compliance.control.s3_bucket_enforces_ssl
  ]

  tags = merge(local.well_architected_framework_sec09_common_tags, {
    choice_id = "sec_protect_data_transit_encrypt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec09_bp03" {
  title       = "BP03 Authenticate network communications"
  description = "Verify the identity of communications by using protocols that support authentication, such as Transport Layer Security (TLS) or IPsec. Design your workload to use secure, authenticated network protocols whenever communicating between services, applications, or to users. Using network protocols that support authentication and authorization provides stronger control over network flows and reduces the impact of unauthorized access."

  children = [
    aws_compliance.control.elb_classic_lb_use_tls_https_listeners,
    aws_compliance.control.vpc_flow_logs_enabled
  ]

  tags = merge(local.well_architected_framework_sec09_common_tags, {
    choice_id = "sec_protect_data_transit_authentication"
    risk      = "UNANSWERED"
  })
}