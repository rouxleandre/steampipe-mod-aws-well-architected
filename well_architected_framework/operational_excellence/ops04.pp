locals {
  well_architected_framework_ops04_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "observability"
  })
}

benchmark "well_architected_framework_ops04" {
  title       = "OPS04 How do you implement observability in your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops04_bp01,
    benchmark.well_architected_framework_ops04_bp02,
    benchmark.well_architected_framework_ops04_bp03,
    benchmark.well_architected_framework_ops04_bp04,
    benchmark.well_architected_framework_ops04_bp05
  ]

  tags = local.well_architected_framework_ops04_common_tags
}

benchmark "well_architected_framework_ops04_bp01" {
  title       = "BP01 Identify key performance indicators"
  description = "Implementing observability in your workload starts with understanding its state and making data-driven decisions based on business requirements. One of the most effective ways to ensure alignment between monitoring activities and business objectives is by defining and monitoring key performance indicators (KPIs)."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops04_common_tags, {
    choice_id = "ops_observability_identify_kpis"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops04_bp02" {
  title       = "BP02 Implement application telemetry"
  description = "Application telemetry serves as the foundation for observability of your workload. It's crucial to emit telemetry that offers actionable insights into the state of your application and the achievement of both technical and business outcomes. From troubleshooting to measuring the impact of a new feature or ensuring alignment with business key performance indicators (KPIs), application telemetry informs the way you build, operate, and evolve your workload."

  children = [
    aws_compliance.control.cloudtrail_trail_enabled,
    aws_compliance.control.cloudtrail_trail_integrated_with_logs,
    aws_compliance.control.cloudwatch_alarm_action_enabled,
    aws_compliance.control.ec2_instance_detailed_monitoring_enabled,
    aws_compliance.control.vpc_flow_logs_enabled,
    aws_compliance.control.apigateway_rest_api_stage_xray_tracing_enabled,
    aws_compliance.control.log_group_encryption_at_rest_enabled
  ]

  tags = merge(local.well_architected_framework_ops04_common_tags, {
    choice_id = "ops_observability_application_telemetry"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops04_bp03" {
  title       = "BP03 Implement user experience telemetry"
  description = "Gaining deep insights into customer experiences and interactions with your application is crucial. Real User Monitoring (RUM) and synthetic transactions serve as powerful tools for this purpose. While RUM provides data about real user interactions, synthetic transactions simulate user interactions, helping in detecting potential issues even before they impact real users."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops04_common_tags, {
    choice_id = "ops_observability_customer_telemetry"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops04_bp04" {
  title       = "BP04 Implement dependency telemetry"
  description = "Dependency telemetry is essential for monitoring the health and performance of the external services and components your workload relies on. It provides valuable insights into reachability, timeouts, and other critical events related to dependencies such as DNS, databases, or third-party APIs. When you instrument your application to emit metrics, logs, and traces about these dependencies, you gain a clearer understanding of potential bottlenecks, performance issues, or failures that might impact your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops04_common_tags, {
    choice_id = "ops_observability_dependency_telemetry"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops04_bp05" {
  title       = "BP05 Implement distributed tracing"
  description = "Distributed tracing offers a way to monitor and visualize requests as they traverse through various components of a distributed system. By capturing trace data from multiple sources and analyzing it in a unified view, teams can better understand how requests flow, where bottlenecks exist, and where optimization efforts should focus."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops04_common_tags, {
    choice_id = "ops_observability_dist_trace"
    risk      = "UNANSWERED"
  })
}