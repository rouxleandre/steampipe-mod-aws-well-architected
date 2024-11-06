locals {
  well_architected_framework_perf03_common_tags = merge(local.well_architected_framework_performance_common_tags, {
    question_id = "data-management"
  })
}

benchmark "well_architected_framework_perf03" {
  title       = "PERF03 How do you store, manage, and access data in your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_perf03_bp01,
    benchmark.well_architected_framework_perf03_bp02,
    benchmark.well_architected_framework_perf03_bp03,
    benchmark.well_architected_framework_perf03_bp04,
    benchmark.well_architected_framework_perf03_bp05
  ]

  tags = local.well_architected_framework_perf03_common_tags
}

benchmark "well_architected_framework_perf03_bp01" {
  title       = "BP01 Use purpose-built data store that best support your data access and storage requirements"
  description = "Understand data characteristics (like shareable, size, cache size, access patterns, latency, throughput, and persistence of data) to select the right purpose-built data stores (storage or database) for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf03_common_tags, {
    choice_id = "perf_data_use_purpose_built_data_store"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf03_bp02" {
  title       = "BP02 Collect and record data store performance metrics"
  description = "Track and record relevant performance metrics for your data store to understand how your data management solutions are performing. These metrics can help you optimize your data store, verify that your workload requirements are met, and provide a clear overview on how the workload performs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf03_common_tags, {
    choice_id = "perf_data_collect_record_data_store_performance_metrics"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf03_bp03" {
  title       = "BP03 Evaluate available configuration options for data store"
  description = "Understand and evaluate the various features and configuration options available for your data stores to optimize storage space and performance for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf03_common_tags, {
    choice_id = "perf_data_evaluate_configuration_options_data_store"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf03_bp04" {
  title       = "BP04 Implement strategies to improve query performance in data store"
  description = "Implement strategies to optimize data and improve data query to enable more scalability and efficient performance for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf03_common_tags, {
    choice_id = "perf_data_implement_strategies_to_improve_query_performance"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf03_bp05" {
  title       = "BP05 Implement data access patterns that utilize caching"
  description = "Implement access patterns that can benefit from caching data for fast retrieval of frequently accessed data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf03_common_tags, {
    choice_id = "perf_data_access_patterns_caching"
    risk      = "UNANSWERED"
  })
}