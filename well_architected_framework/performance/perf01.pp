locals {
  well_architected_framework_perf01_common_tags = merge(local.well_architected_framework_performance_common_tags, {
    question_id = "performing-architecture"
  })
}

benchmark "well_architected_framework_perf01" {
  title       = "PERF01 How do you select the appropriate cloud resources and architecture patterns for your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_perf01_bp01,
    benchmark.well_architected_framework_perf01_bp02,
    benchmark.well_architected_framework_perf01_bp03,
    benchmark.well_architected_framework_perf01_bp04,
    benchmark.well_architected_framework_perf01_bp05,
    benchmark.well_architected_framework_perf01_bp06,
    benchmark.well_architected_framework_perf01_bp07
  ]

  tags = local.well_architected_framework_perf01_common_tags
}

benchmark "well_architected_framework_perf01_bp01" {
  title       = "BP01 Learn about and understand available cloud services and features"
  description = "Continually learn about and discover available services and configurations that help you make better architectural decisions and improve performance efficiency in your workload architecture."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_understand_cloud_services_and_features"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp02" {
  title       = "BP02 Evaluate how trade-offs impact customers and architecture efficiency"
  description = "When evaluating performance-related improvements, determine which choices impact your customers and workload efficiency. For example, if using a key-value data store increases system performance, it is important to evaluate how the eventually consistent nature of this change will impact customers."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_evaluate_trade_offs"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp03" {
  title       = "BP03 Use guidance from your cloud provider or an appropriate partner to learn about architecture patterns and best practices"
  description = "Use cloud company resources such as documentation, solutions architects, professional services, or appropriate partners to guide your architectural decisions. These resources help you review and improve your architecture for optimal performance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_guidance_architecture_patterns_best_practices"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp04" {
  title       = "BP04 Factor cost into architectural decisions"
  description = "Factor cost into your architectural decisions to improve resource utilization and performance efficiency of your cloud workload. When you are aware of the cost implications of your cloud workload, you are more likely to leverage efficient resources and reduce wasteful practices."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_factor_cost_into_architectural_decisions"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp05" {
  title       = "BP05 Use policies and reference architectures"
  description = "Use internal policies and existing reference architectures when selecting services and configurations to be more efficient when designing and implementing your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_use_policies_and_reference_architectures"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp06" {
  title       = "BP06 Use benchmarking to drive architectural decisions"
  description = "Benchmark the performance of an existing workload to understand how it performs on the cloud and drive architectural decisions based on that data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_use_benchmarking"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf01_bp07" {
  title       = "BP07 Use a data-driven approach for architectural choices"
  description = "Define a clear, data-driven approach for architectural choices to verify that the right cloud services and configurations are used to meet your specific business needs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf01_common_tags, {
    choice_id = "perf_architecture_use_data_driven_approach"
    risk      = "UNANSWERED"
  })
}