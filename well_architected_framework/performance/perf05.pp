locals {
  well_architected_framework_perf05_common_tags = merge(local.well_architected_framework_performance_common_tags, {
    question_id = "process-culture"
  })
}

benchmark "well_architected_framework_perf05" {
  title       = "PERF05 What process do you use to support more performance efficiency for your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_perf05_bp01,
    benchmark.well_architected_framework_perf05_bp02,
    benchmark.well_architected_framework_perf05_bp03,
    benchmark.well_architected_framework_perf05_bp04,
    benchmark.well_architected_framework_perf05_bp05,
    benchmark.well_architected_framework_perf05_bp06,
    benchmark.well_architected_framework_perf05_bp07
  ]

  tags = local.well_architected_framework_perf05_common_tags
}

benchmark "well_architected_framework_perf05_bp01" {
  title       = "BP01 Establish key performance indicators (KPIs) to measure workload health and performance"
  description = "Identify the KPIs that quantitatively and qualitatively measure workload performance. KPIs help you measure the health and performance of a workload related to a business goal."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_establish_key_performance_indicators"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp02" {
  title       = "BP02 Use monitoring solutions to understand the areas where performance is most critical"
  description = "Understand and identify areas where increasing the performance of your workload will have a positive impact on efficiency or customer experience. For example, a website that has a large amount of customer interaction can benefit from using edge services to move content delivery closer to customers."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_use_monitoring_solutions"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp03" {
  title       = "BP03 Define a process to improve workload performance"
  description = "Define a process to evaluate new services, design patterns, resource types, and configurations as they become available. For example, run existing performance tests on new instance offerings to determine their potential to improve your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_workload_performance"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp04" {
  title       = "BP04 Review metrics at regular intervals"
  description = "As part of routine maintenance or in response to events or incidents, review which metrics are collected. Use these reviews to identify which metrics were essential in addressing issues and which additional metrics, if they were being tracked, could help identify, address, or prevent issues."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_review_metrics"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp05" {
  title       = "BP05 Load test your workload"
  description = "Load test your workload to verify it can handle production load and identify any performance bottleneck."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_load_test"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp06" {
  title       = "BP06 Use automation to proactively remediate performance-related issues"
  description = "Use key performance indicators (KPIs), combined with monitoring and alerting systems, to proactively address performance-related issues."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_automation_remediate_issues"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf05_bp07" {
  title       = "BP07 Keep your workload and services up-to-date"
  description = "Stay up-to-date on new cloud services and features to adopt efficient features, remove issues, and improve the overall performance efficiency of your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf05_common_tags, {
    choice_id = "perf_process_culture_keep_workload_and_services_up_to_date"
    risk      = "UNANSWERED"
  })
}