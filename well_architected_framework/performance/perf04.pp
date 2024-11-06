locals {
  well_architected_framework_perf04_common_tags = merge(local.well_architected_framework_performance_common_tags, {
    question_id = "networking"
  })
}

benchmark "well_architected_framework_perf04" {
  title       = "PERF04 How do you select and configure networking resources in your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_perf04_bp01,
    benchmark.well_architected_framework_perf04_bp02,
    benchmark.well_architected_framework_perf04_bp03,
    benchmark.well_architected_framework_perf04_bp04,
    benchmark.well_architected_framework_perf04_bp05,
    benchmark.well_architected_framework_perf04_bp06,
    benchmark.well_architected_framework_perf04_bp07
  ]

  tags = local.well_architected_framework_perf04_common_tags
}

benchmark "well_architected_framework_perf04_bp01" {
  title       = "BP01 Understand how networking impacts performance"
  description = "Analyze and understand how network-related decisions impact your workload to provide efficient performance and improved user experience."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_understand_how_networking_impacts_performance"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp02" {
  title       = "BP02 Evaluate available networking features"
  description = "Evaluate networking features in the cloud that may increase performance. Measure the impact of these features through testing, metrics, and analysis. For example, take advantage of network-level features that are available to reduce latency, network distance, or jitter."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_evaluate_networking_features"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp03" {
  title       = "BP03 Choose appropriate dedicated connectivity or VPN for your workload"
  description = "When hybrid connectivity is required to connect on-premises and cloud resources, provision adequate bandwidth to meet your performance requirements. Estimate the bandwidth and latency requirements for your hybrid workload. These numbers will drive your sizing requirements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_choose_appropriate_dedicated_connectivity_or_vpn"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp04" {
  title       = "BP04 Use load balancing to distribute traffic across multiple resources"
  description = "Distribute traffic across multiple resources or services to allow your workload to take advantage of the elasticity that the cloud provides. You can also use load balancing for offloading encryption termination to improve performance, reliability and manage and route traffic effectively."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_load_balancing_distribute_traffic"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp05" {
  title       = "BP05 Choose network protocols to improve performance"
  description = "Make decisions about protocols for communication between systems and networks based on the impact to the workload’s performance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_choose_network_protocols_improve_performance"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp06" {
  title       = "BP06 Choose your workload's location based on network requirements"
  description = "Evaluate options for resource placement to reduce network latency and improve throughput, providing an optimal user experience by reducing page load and data transfer times."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_choose_workload_location_network_requirements"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_perf04_bp07" {
  title       = "BP07 Optimize network configuration based on metrics"
  description = "Use collected and analyzed data to make informed decisions about optimizing your network configuration."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_perf04_common_tags, {
    choice_id = "perf_networking_optimize_network_configuration_based_on_metrics"
    risk      = "UNANSWERED"
  })
}