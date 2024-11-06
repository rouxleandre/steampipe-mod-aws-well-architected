locals {
  well_architected_framework_perf02_common_tags = merge(local.well_architected_framework_performance_common_tags, {
    question_id = "compute-hardware"
  })
}

benchmark "well_architected_framework_perf02" {
  title       = "PERF02 How do you select and use compute resources in your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_perf02_bp01,
    benchmark.well_architected_framework_perf02_bp02,
    benchmark.well_architected_framework_perf02_bp03,
    benchmark.well_architected_framework_perf02_bp04,
    benchmark.well_architected_framework_perf02_bp05,
    benchmark.well_architected_framework_perf02_bp06
  ]

  tags = local.well_architected_framework_perf02_common_tags
}

benchmark "well_architected_framework_perf02_bp01" {
  title       = "BP01 Select the best compute options for your workload"
  description = "Selecting the most appropriate compute option for your workload allows you to improve performance, reduce unnecessary infrastructure costs, and lower the operational efforts required to maintain your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_select_best_compute_options"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf02_bp02" {
  title       = "BP02 Collect compute-related metrics"
  description = "Record and track compute-related metrics to better understand how your compute resources are performing and improve their performance and their utilization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_collect_compute_related_metrics"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf02_bp03" {
  title       = "BP03 Scale your compute resources dynamically"
  description = "Use the elasticity of the cloud to scale your compute resources up or down dynamically to match your needs and avoid over- or under-provisioning capacity for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_scale_compute_resources_dynamically"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf02_bp04" {
  title       = "BP04 Understand the available compute configuration and features"
  description = "Understand the available configuration options and features for your compute service to help you provision the right amount of resources and improve performance efficiency."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_understand_compute_configuration_features"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf02_bp05" {
  title       = "BP05 Configure and right-size compute resources"
  description = "Configure and right-size compute resources to match your workload’s performance requirements and avoid under- or over-utilized resources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_configure_and_right_size_compute_resources"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf02_bp06" {
  title       = "BP06 Use optimized hardware-based compute accelerators"
  description = "Use hardware accelerators to perform certain functions more efficiently than CPU-based alternatives."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf02_common_tags, {
    choice_id = "perf_compute_hardware_compute_accelerators"
    risk      = "UNANSWERED"
  })
}