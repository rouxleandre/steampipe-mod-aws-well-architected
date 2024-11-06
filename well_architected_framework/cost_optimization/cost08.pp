locals {
  well_architected_framework_cost08_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "data-transfer"
  })
}

benchmark "well_architected_framework_cost08" {
  title       = "COST08 How do you plan for data transfer charges?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost08_bp01,
    benchmark.well_architected_framework_cost08_bp02,
    benchmark.well_architected_framework_cost08_bp03
  ]

  tags = local.well_architected_framework_cost08_common_tags
}

benchmark "well_architected_framework_cost08_bp01" {
  title       = "BP01 Perform data transfer modeling"
  description = "Gather organization requirements and perform data transfer modeling of the workload and each of its components. This identifies the lowest cost point for its current data transfer requirements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost08_common_tags, {
    choice_id = "cost_data_transfer_modeling"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost08_bp02" {
  title       = "BP02 Select components to optimize data transfer cost"
  description = "All components are selected, and architecture is designed to reduce data transfer costs. This includes using components such as wide-area-network (WAN) optimization and Multi-Availability Zone (AZ) configurations"

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost08_common_tags, {
    choice_id = "cost_data_transfer_optimized_components"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost08_bp03" {
  title       = "BP03 Implement services to reduce data transfer costs"
  description = "Implement services to reduce data transfer. For example, use edge locations or content delivery networks (CDN) to deliver content to end users, build caching layers in front of your application servers or databases, and use dedicated network connections instead of VPN for connectivity to the cloud."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost08_common_tags, {
    choice_id = "cost_data_transfer_implement_services"
    risk      = "UNANSWERED"
  })
}