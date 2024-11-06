locals {
  well_architected_framework_cost09_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "manage-demand-resources"
  })
}

benchmark "well_architected_framework_cost09" {
  title       = "COST09 How do you manage demand, and supply resources?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost09_bp01,
    benchmark.well_architected_framework_cost09_bp02,
    benchmark.well_architected_framework_cost09_bp03
  ]

  tags = local.well_architected_framework_cost09_common_tags
}

benchmark "well_architected_framework_cost09_bp01" {
  title       = "BP01 Perform an analysis on the workload demand"
  description = "Analyze the demand of the workload over time. Verify that the analysis covers seasonal trends and accurately represents operating conditions over the full workload lifetime. Analysis effort should reflect the potential benefit, for example, time spent is proportional to the workload cost."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost09_common_tags, {
    choice_id = "cost_manage_demand_resources_cost_analysis"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost09_bp02" {
  title       = "BP02 Implement a buffer or throttle to manage demand"
  description = "Buffering and throttling modify the demand on your workload, smoothing out any peaks. Implement throttling when your clients perform retries. Implement buffering to store the request and defer processing until a later time. Verify that your throttles and buffers are designed so clients receive a response in the required time."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost09_common_tags, {
    choice_id = "cost_manage_demand_resources_buffer_throttle"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost09_bp03" {
  title       = "BP03 Supply resources dynamically"
  description = "Resources are provisioned in a planned manner. This can be demand-based, such as through automatic scaling, or time-based, where demand is predictable and resources are provided based on time. These methods result in the least amount of over-provisioning or under-provisioning."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost09_common_tags, {
    choice_id = "cost_manage_demand_resources_dynamic"
    risk      = "UNANSWERED"
  })
}