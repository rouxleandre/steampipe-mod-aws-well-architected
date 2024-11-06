locals {
  well_architected_framework_ops08_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "workload-observability"
  })
}

benchmark "well_architected_framework_ops08" {
  title       = "OPS08 How do you utilize workload observability in your organization?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops08_bp01,
    benchmark.well_architected_framework_ops08_bp02,
    benchmark.well_architected_framework_ops08_bp03,
    benchmark.well_architected_framework_ops08_bp04,
    benchmark.well_architected_framework_ops08_bp05
  ]

  tags = local.well_architected_framework_ops08_common_tags
}

benchmark "well_architected_framework_ops08_bp01" {
  title       = "BP01 Create actionable alerts"
  description = "Promptly detecting and responding to deviations in your application's behavior is crucial. Especially vital is recognizing when outcomes based on key performance indicators (KPIs) are at risk or when unexpected anomalies arise. Basing alerts on KPIs ensures that the signals you receive are directly tied to business or operational impact. This approach to actionable alerts promotes proactive responses and helps maintain system performance and reliability."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops08_common_tags, {
    choice_id = "ops_workload_observability_create_alerts"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops08_bp02" {
  title       = "BP02 Analyze workload metrics"
  description = "After implementing application telemetry, regularly analyze the collected metrics. While latency, requests, errors, and capacity (or quotas) provide insights into system performance, it's vital to prioritize the review of business outcome metrics. This ensures you're making data-driven decisions aligned with your business objectives."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops08_common_tags, {
    choice_id = "ops_workload_observability_analyze_workload_metrics"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops08_bp03" {
  title       = "BP03 Analyze workload logs"
  description = "Regularly analyzing workload logs is essential for gaining a deeper understanding of the operational aspects of your application. By efficiently sifting through, visualizing, and interpreting log data, you can continually optimize application performance and security."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops08_common_tags, {
    choice_id = "ops_workload_observability_analyze_workload_logs"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops08_bp04" {
  title       = "BP04 Analyze workload traces"
  description = "Analyzing trace data is crucial for achieving a comprehensive view of an application's operational journey. By visualizing and understanding the interactions between various components, performance can be fine-tuned, bottlenecks identified, and user experiences enhanced."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops08_common_tags, {
    choice_id = "ops_workload_observability_analyze_workload_traces"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops08_bp05" {
  title       = "BP05 Create dashboards"
  description = "Dashboards are the human-centric view into the telemetry data of your workloads. While they provide a vital visual interface, they should not replace alerting mechanisms, but complement them. When crafted with care, not only can they offer rapid insights into system health and performance, but they can also present stakeholders with real-time information on business outcomes and the impact of issues."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops08_common_tags, {
    choice_id = "ops_workload_observability_create_dashboards"
    risk      = "UNANSWERED"
  })
}