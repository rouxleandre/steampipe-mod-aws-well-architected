locals {
  well_architected_framework_cost10_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "evaluate-new-services"
  })
}

benchmark "well_architected_framework_cost10" {
  title       = "COST10 How do you evaluate new services?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost10_bp01,
    benchmark.well_architected_framework_cost10_bp02
  ]

  tags = local.well_architected_framework_cost10_common_tags
}

benchmark "well_architected_framework_cost10_bp01" {
  title       = "BP01 Develop a workload review process"
  description = "Develop a process that defines the criteria and process for workload review. The review effort should reflect potential benefit. For example, core workloads or workloads with a value of over ten percent of the bill are reviewed quarterly or every six months, while workloads below ten percent are reviewed annually."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost10_common_tags, {
    choice_id = "cost_evaluate_new_services_review_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost10_bp02" {
  title       = "BP02 Review and analyze this workload regularly"
  description = "Existing workloads are regularly reviewed based on each defined process to find out if new services can be adopted, existing services can be replaced, or workloads can be re-architected."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost10_common_tags, {
    choice_id = "cost_evaluate_new_services_review_workload"
    risk      = "UNANSWERED"
  })
}