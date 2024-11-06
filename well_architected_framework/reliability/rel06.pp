locals {
  well_architected_framework_rel06_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "monitor-aws-resources"
  })
}

benchmark "well_architected_framework_rel06" {
  title       = "REL06 How do you monitor workload resources?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel06_bp01,
    benchmark.well_architected_framework_rel06_bp02,
    benchmark.well_architected_framework_rel06_bp03,
    benchmark.well_architected_framework_rel06_bp04,
    benchmark.well_architected_framework_rel06_bp05,
    benchmark.well_architected_framework_rel06_bp06,
    benchmark.well_architected_framework_rel06_bp07
  ]

  tags = local.well_architected_framework_rel06_common_tags
}

benchmark "well_architected_framework_rel06_bp01" {
  title       = "BP01 Monitor all components for the workload (Generation)"
  description = "Monitor the components of the workload with Amazon CloudWatch or third-party tools. Monitor AWS services with AWS Health Dashboard."

  children = [
    aws_compliance.control.ec2_instance_detailed_monitoring_enabled,
    aws_compliance.control.apigateway_stage_logging_enabled,
    aws_compliance.control.acm_certificate_transparency_logging_enabled,
    aws_compliance.control.codebuild_project_logging_enabled,
    aws_compliance.control.ecs_task_definition_logging_enabled,
    aws_compliance.control.elb_application_classic_lb_logging_enabled,
    aws_compliance.control.lambda_function_cloudtrail_logging_enabled,
    aws_compliance.control.opensearch_domain_audit_logging_enabled,
    aws_compliance.control.rds_db_instance_logging_enabled,
    aws_compliance.control.route53_zone_query_logging_enabled,
    aws_compliance.control.s3_bucket_logging_enabled,
    aws_compliance.control.s3_bucket_object_logging_enabled,
    aws_compliance.control.waf_web_acl_logging_enabled
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_monitor_resources"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp02" {
  title       = "BP02 Define and calculate metrics (Aggregation)"
  description = "Store log data and apply filters where necessary to calculate metrics, such as counts of a specific log event, or latency calculated from log event timestamps."

  children = [
    aws_compliance.control.ecs_cluster_container_insights_enabled,
    aws_compliance.control.elastic_beanstalk_enhanced_health_reporting_enabled
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_notification_aggregation"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp03" {
  title       = "BP03 Send notifications (Real-time processing and alarming)"
  description = "When organizations detect potential issues, they send real-time notifications and alerts to the appropriate personnel and systems in order to respond quickly and effectively to these issues."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_notification_monitor"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp04" {
  title       = "BP04 Automate responses (Real-time processing and alarming)"
  description = "Use automation to take action when an event is detected, for example, to replace failed components."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_automate_response_monitor"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp05" {
  title       = "BP05 Analyze logs"
  description = "Organizations use log analysis to search, analyze, and visualize data generated by your IT systems, applications, and technology infrastructure. Perform regular log analysis to provide operational insights into your workloads. Capture and centralize all logs and metrics from your applications and services to get deep visibility into your application and infrastructure stack and improve uptime."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_storage_analytics"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp06" {
  title       = "BP06 Conduct reviews regularly"
  description = "Frequently review how workload monitoring is implemented and update it based on significant events and changes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_review_monitoring"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel06_bp07" {
  title       = "BP07 Monitor end-to-end tracing of requests through your system"
  description = "Trace requests as they process through service components so product teams can more easily analyze and debug issues and improve performance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel06_common_tags, {
    choice_id = "rel_monitor_aws_resources_end_to_end"
    risk      = "UNANSWERED"
  })
}